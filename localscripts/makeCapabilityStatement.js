#!/usr/bin/env node
/**
 * Generates input/pagecontent/capabilityStatement.xml based on the SUSHI-generated Capability Statement
 *  (which was generated as an example instance, in file fsh-generated/resources/CapabilityStatement-*.json)
 * 
 */
let fs = require('fs');
const { Remarkable } = require('remarkable');

var md = new Remarkable();
let rootPath = "./fsh-generated/resources/";
let outFile1 = "./input/pagecontent/capabilityStatement.xml";  // for IG publisher

console.log('Building summary of the CapabilityStatement resource ')
console.log('Location of CapabilityStatement:' + rootPath)
console.log('Writing output to ' + outFile1)

let hashInteraction = {}
hashInteraction['create'] = "Creates a resource."
hashInteraction['read'] = "Retrieves a resource by its ID. Will return a single resource."
hashInteraction['update'] = "Updates a resource."
hashInteraction['delete'] = "Deletes a resource."
hashInteraction['vread'] = "Retrieves a version of a resource by its ID and version ID. Will return a single resource."
hashInteraction['search-type'] = "Queries against the resource type. Will return a Bundle (even if there are no matching resources)."

let ar = []
ar.push("<div xmlns='http://www.w3.org/1999/xhtml'>")
ar.push("<!-- Generated by the makeCapabilityStatement script -->")
ar.push("<div>API Summary (Generated from the CapabilityStatement Resource)</div>")

if (fs.existsSync(rootPath)) {
    let arFiles = fs.readdirSync(rootPath);
    arFiles.forEach(function (name) {

        if (name.substr(0, 3) == 'Cap') {
            //for now - assume only 1. will need what to do if there is > 1

            let fullFileName = rootPath + "/" + name;
            let contents = fs.readFileSync(fullFileName).toString();
            let capStmt = JSON.parse(contents)

            //todo - convert markdown into HTML...
            if (capStmt.description) {
                ar.push('<br/><div>' + cleanText(capStmt.description) + "</div>")
            }

            capStmt.rest.forEach(function (rest) {
                rest.resource.forEach(function (res) {
                    ar.push(`<a name="${res.type}"> </a>`)
                    ar.push(`<h3>${res.type}</h3>`)

                    if (res.documentation) {
                        let documentation = cleanText(res.documentation) || ""
                        ar.push(`<div>${documentation}</div>`)
                        ar.push("<br></br>")
                    }

                    if (res.interaction) {
                        ar.push("<strong>Interactions</strong>")
                        ar.push("<table class='table table-bordered table-condensed'>")
                        ar.push("<tr><th width='30%'>Code</th><th width='70%'>Documentation</th></tr>")
                        res.interaction.forEach(function (int) {
                            let documentation = cleanText(int.documentation) || hashInteraction[int.code]
                            ar.push("<tr>")
                            ar.push(`<td>${int.code}</td>`)
                            ar.push(`<td>${documentation}</td>`)
                            ar.push("</tr>")
                        })
                        ar.push("</table>")
                    }

                    if (res.searchParam) {
                        ar.push("<strong>Search Parameters</strong>")
                        ar.push("<table class='table table-bordered table-condensed'>")
                        ar.push("<tr><th width='15%'>Name</th><th>Type</th><th width='70%'>Documentation</th></tr>")

                        res.searchParam.forEach(function (int) {
                            let documentation = cleanText(int.documentation) || ""
                            ar.push("<tr>")
                            ar.push(`<td>${int.name}</td>`)
                            ar.push(`<td><a target='_blank' href="http://hl7.org/fhir/search.html#${int.type}">${int.type}</a></td>`)
                            if (int.definition) {
                                documentation = "<div>Definition: " + int.definition + "</div>" + documentation
                            }
                            ar.push(`<td>${documentation}</td>`)
                            ar.push("</tr>")

                        })
                        ar.push("</table>")
                    }

                    if (res.searchInclude) {
                        ar.push("<strong>Search includes</strong>")
                        ar.push("<table class='table table-bordered table-condensed'>")
                        ar.push("<tr><th width='15%'>Name</th></tr>")
                        res.searchInclude.forEach(function (inc) {
                            ar.push("<tr>")
                            ar.push(`<td>${inc}</td>`)
                            ar.push("</tr>")
                        })
                        ar.push("</table>")
                        ar.push("<em>These are the _include parameters that are supported on searches</em>")
                        ar.push("<br/><br/>")
                    }
                })
            })
        }
    })
}
ar.push("</div>")

let file1 = ar.join('\r\n')
fs.writeFileSync(outFile1, file1);

//ensure that characters that can update XML are 'escpaed'
function cleanText(s) {
    if (s) {
        return md.render(s)
    }
}