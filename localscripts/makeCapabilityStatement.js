#!/usr/bin/env node
/**
 * Generates input/pagecontent/capabilityStatement.xml - which summarizes the static capability statement from SmileCDR software
 * 
 */
let fs = require('fs');
let YAML = require('js-yaml');

if (process.argv.length !== 3 || ! ['clinical', 'terminology', 'foundation'].includes(process.argv[2])) {
    console.error(`

    Usage:
        makeCapabilityStatement clinical | terminology | foundation
        
        Which subset of FHIR Resources are we including?`);
    process.exit(1);
  }

const { Remarkable } = require('remarkable');
var md = new Remarkable();

// let rootPath = "./fsh-generated/resources/";
let rootPath = "./input/resources/";
let outFile = `./input/pagecontent/${process.argv[2]}Resources.xml`;  // for IG publisher


console.log(`Building summary of the CapabilityStatement (${process.argv[2]}) resources`)
console.log(`Location of source CapabilityStatement: ${rootPath}CapabilityStatement-SmileCDR.json`)
console.log('Writing output to ' + outFile + '\n')

// Default description for each kind of interaction - used when the source capability statement has no documentation
let hashInteraction = {};
hashInteraction['create'] = "Creates a new resource in a server-assigned location. The create interaction is performed by an HTTP `POST` command."
hashInteraction['read'] = "Retrieves a resource by its ID. Will return a single resource. The read interaction accesses the current contents of a resource. The interaction is performed by an HTTP `GET` command"
hashInteraction['update'] = "Creates a new current version for an existing resource OR creates an initial version if no resource already exists for the given id. The update interaction is performed by an HTTP `PUT` command"
hashInteraction['patch'] = "Updates some fields of the current version of a resource. This can be useful when a client is seeking to minimize its bandwidth utilization, or in scenarios where a client has only partial access or support for a resource. The patch interaction is performed by an HTTP `PATCH` command"
hashInteraction['delete'] = "Deletes a resource."
hashInteraction['vread'] = "Retrieves a version of a resource by its ID and version ID. Will return a single resource. The vread interaction is performed by an HTTP `GET` command - `[base]/[resource-type]/[id]/_history/[vid]`"
hashInteraction['search-type'] = "Queries against the resource type. Will return a Bundle (even if there are no matching resources). The search-type interaction is performed by an HTTP `GET` command - `[base]/[resource-type]/_search`"
hashInteraction['history-type'] = "Queries against the resource type. Will return a Bundle, with history of matching resources  The history-type interaction is performed by an HTTP `GET` command - `[base]/[resource-type]/_history`"
hashInteraction['history-instance'] = "Retrieves  a resource by its ID. Will return a Bundle, with history of that resource  The history-instance interaction is performed by an HTTP `GET` command - `[base]/[resource-type]/[id]/_history`"

// Default description for each extended operation - used when source capability statement has no documentation
let hashOperation = {};
hashOperation['validate']= "Checks whether the attached content would be acceptable either generally, as a create, an update or as a delete to an existing resource. [details](https://hl7.org/fhir/resource-operation-validate.html) - `[base]/[Resource]/[id]/$validate`";
hashOperation['meta']= "Retrieves a summary of the profiles, tags, and security labels for the given scope. [details](https://hl7.org/fhir/resource-operation-meta.html) - `[base]/[Resource]/[id]/$meta`";
hashOperation['meta-add']= "Takes a meta, and adds the profiles, tags, and security labels found in it to the nominated resource.[details](https://hl7.org/fhir/resource-operation-meta-add.html) - `base]/[Resource]/[id]/$meta-add`";
hashOperation['meta-delete']= "Takes a meta, and deletes the profiles, tags, and security labels found in it from the nominated resource. [details](https://hl7.org/fhir/resource-operation-meta-delete.html) - `[base]/[Resource]/[id]/$meta-delete`";
hashOperation['convert']= "Takes a resource in one form, and returns to in another form. [details](https://hl7.org/fhir/resource-operation-convert.html) - `[base]/$convert`";
hashOperation['graphql']= "Execute a graphql statement on a since resource or against the entire system. [details](https://hl7.org/fhir/resource-operation-graphql.html) - `[base]/[Resource]/[id]/$graphql`";
hashOperation['graph']= "Return an entire graph of resources based on a GraphDefinition. [details](https://hl7.org/fhir/resource-operation-graph.html) - `[base]/[Resource]/[id]/$graph`";
hashOperation['add']= "Add content to an array in a large resource such as List or Group. [details](https://hl7.org/fhir/resource-operation-add.html) - `[base]/[Resource]/[id]/$add`";
hashOperation['remove']= "Remove content from an array in a large resource such as List or Group. [details](https://hl7.org/fhir/resource-operation-remove.html) - `[base]/[Resource]/[id]/$remove`";
hashOperation['filter']= "Filter content from an array in a large resource such as List or Group. [details](https://hl7.org/fhir/resource-operation-filter.html) - `[base]/[Resource]/[id]/$filter`";
hashOperation['current-canonical']= "Returns the most current version of the canonical resource with the specified url available on the server. [details](https://hl7.org/fhir/canonicalresource-operation-current-canonical.html) - `[base]/[CanonicalResource]/$current-canonical`";

hashOperation['expunge']= "Physically delete, rather than logically delete, old versions of resources, deleted resources, etc. [details](https://smilecdr.com/docs/fhir_repository/deleting_data.html#expunge) - `[base]/[Resource]/[id]/$expunge`";
hashOperation['diff']= "Examines two resource versions (can be two versions of the same resource, or two different resources) and generates a FHIR Patch document showing the differences. [details](https://hapifhir.io/hapi-fhir/docs/server_jpa/diff.html) - `[base]/[Resource]/[id]/$diff`";


// Which resources are in which set ?
let resourceSets = {};
resourceSets['clinical']    = [ 'Patient', 'Flag', 'AllergyIntolerance', 'ClinicalImpression', 'Organization', 'Practitioner', 'ServiceRequest' ];
resourceSets['terminology'] = [ 'CodeSystem', 'ValueSet', 'ConceptMap'];
resourceSets['foundation']  = ['Subscription', 'StructureDefinition', 'ImplementationGuide' ];

let ar = []
ar.push("<div xmlns='http://www.w3.org/1999/xhtml'>")
ar.push("<!-- Generated by the makeCapabilityStatement script -->")

// WE're going to need a wee bit from the sushi-config file
let igVersion = YAML.load(fs.readFileSync("sushi-config.yaml")).version;

if (fs.existsSync(rootPath)) {
    let arFiles = fs.readdirSync(rootPath);
    arFiles.forEach(function (name) {

        if (name.startsWith('CapabilityStatement')) {
            //for now - assume only 1. will need what to do if there is > 1


            let fullFileName = rootPath + "/" + name;
            let contents = fs.readFileSync(fullFileName).toString();
            let capStmt = JSON.parse(contents)

            ar.push("<div>");
            ar.push(`<a href="${capStmt.id}.openapi.json" target='_openApi' no-download="true">Raw OpenAPI Definition file</a> | <a download="${capStmt.id}.openapi" href="${capStmt.id}.openapi.json">Download</a>`);
            ar.push("</div>");

            ar.push(`<div>API Summary (Generated from the CapabilityStatement: ${capStmt.id})</div>`);

            // todo - convert markdown into HTML...
            if (capStmt.description) {
                ar.push('<br/><div>' + cleanText(capStmt.description) + "</div>");
            }

            ar.push('<a name="EndPoints"> </a>');
            ar.push(`<h3>${capStmt.title}</h3>`);
            ar.push('<div>');
            ar.push('<ul>');
            ar.push(`<li>Implementation Guide Version: ${igVersion}</li>`);
            ar.push(`<li>FHIR Version: ${capStmt.fhirVersion}</li>`);
            ar.push(`<li>Formats:`);
                capStmt.format.forEach(function (fmt, ndx, fmts) {
                    ar.push(`<code>${fmt}</code>${(ndx < fmts.length-1) ? ", " : ""}`);
                })
                ar.push('</li>');
                ar.push(`<li>Patch Formats:`);
                capStmt.patchFormat.forEach(function (fmt, ndx, fmts) {
                    ar.push(`<code>${fmt}</code>${(ndx < fmts.length-1) ? ", " : ""}`);
                })
                ar.push('</li>');
                ar.push(`<li>Published On: ${capStmt.date}</li>`);
                ar.push(`<li>Published By: ${capStmt.publisher}</li>`);
            ar.push('</ul>');
            ar.push('</div>');
            
            ar.push(`<div><strong>Note:</strong> Complete documentation on FHIR REST operations is available at <a target='_fhirHttp' href="https://hl7.org/fhir/http.html">FHIR RESTful API</a></div><br/>`)

            // Summary table
            ar.push('<a name="Summary"> </a>');
            ar.push('<div class="lead">Capabilities by Resource/Profile:</div>');

            ar.push("<table class='table table-condensed table-hover'>");
            ar.push('<thead><tr><th width="10%">Resouce Type</th><th width="20%">Profile</th><th width="10%">Operations</th><th width="10%">Searches</th><th width="10%"><code>_incldue</code></th><th width="10%"><code>_revinclude</code></th></tr></thead>');
            ar.push("<tbody>");

            capStmt.rest.forEach(function (rest) {
                // Only do the requested Resources...
                rest.resource.filter(cand => resourceSets[process.argv[2]].includes(cand.type)).forEach(function (res) {
                    ar.push(`<tr>`);
                    ar.push(`<td><a href="#pnl${res.type}">${res.type}</a></td>`);

                    // Profiles
                    ar.push("<td>");
                    if (res.supportedProfile) {
                        ar.push("<em>Local Profile:</em><br/>")
                        // bodge the URL to be a link into the IG
                        ndx = res.supportedProfile.toString().lastIndexOf('/');
                        profile = res.supportedProfile.toString().substring(ndx+1);
                        ar.push(`<a target='_blank' href="./StructureDefinition-${profile}.html">${profile}</a><br/>`);
                    } else {
                        ar.push("<em>Base System Profile:</em><br/>");
                        ar.push(`<a href="${res.profile}" target="_blank">${res.profile}</a>`);
                    }
                    ar.push("</td>");

                    // Operations
                    ar.push(`<td>`);
                    res.interaction.forEach(function (int, ndx, list) {
                        ar.push(`<code>${int.code}</code>${ndx <list.length-1?", ":""}`);
                    });
                    ar.push(`</td>`);

                    // Search
                    ar.push(`<td>`);
                    res.searchParam.forEach(function (srch, ndx, list) {
                        ar.push(`<code>${srch.name}</code>${ndx <list.length-1?", ":""}`);
                    });
                    ar.push(`</td>`);

                    // _include
                    if(res.searchInclude) {
                        ar.push(`<td>`);
                        res.searchInclude.forEach(function (incl, ndx, list) {
                            ar.push(`<code>${incl}</code>${ndx <list.length-1?", ":""}`);
                        });
                        ar.push(`</td>`);

                        // _revinclude
                        if(res.searchRevInclude) {
                            ar.push(`<td>`);
                            res.searchRevInclude.forEach(function (incl, ndx, list) {
                                ar.push(`<code>${incl}</code>${ndx <list.length-1?", ":""}`);
                            });
                            ar.push(`</td>`);                 
                        }
                        else {
                            ar.push("<td/>");
                        }
                    }
                    else {
                        ar.push("<td/><td/>");
                    }


                    // Finish the row
                    ar.push(`</tr>`);
                });
            })
            ar.push('</tbody></table>');

            // Panel for each Resource
            capStmt.rest.forEach(function (rest) {
                // Only do the requested Resources...
                rest.resource.filter(cand => resourceSets[process.argv[2]].includes(cand.type)).forEach(function (res) {
                    ar.push(`<a name="${res.type}"> </a>`)
                    ar.push('<div class="panel panel-default">');
                    ar.push(`<div class="panel-heading"><a name="pnl${res.type}"/><h3>${res.type}</h3></div><div class="panel-body"><div class="container">`)

                    if (res.documentation) {
                        let documentation = cleanText(res.documentation) || ""
                        ar.push(`<div>${documentation}</div>`)
                        ar.push("<br></br>")
                    }

                    // We've got a locally defined profile...
                    if (res.supportedProfile) {
                        // bodge the URL to be a link into the IG
                        ndx = res.supportedProfile.toString().lastIndexOf('/');
                        profile = 'StructureDefinition-' + res.supportedProfile.toString().substring(ndx+1);
                        ar.push(`<div class="row"><span class="lead">Profile:</span><br/> <a target='_blank' href="./${profile}.html">${res.supportedProfile}</a></div>`);
                    }
                    // a globally defined profile
                    else if(res.profile)
                        ar.push(`<div class="row"><span class="lead">Profile:</span><br/> <a target='_blank' href="${res.profile}">${res.profile}</a></div>`);

                    else
                        ar.push('<div class="row"><span class="lead">Profile:</span><br/> None</div>');

                    ar.push("<br/>");

                    if (res.interaction) {
                        ar.push('<div class="row"><span class="lead">Interactions: </span></div>');
                        ar.push("<table class='table table-condensed table-hover'>");
                        ar.push("<thead><tr><th width='30%'>Interaction</th><th width='70%'>Documentation</th></tr></thead>");
                        ar.push("<tbody>");
                        res.interaction.forEach(function (int) {
                            let documentation = int.documentation ? md.render(int.documentation) : md.render(hashInteraction[int.code]);
                            ar.push("<tr>")
                            ar.push(`<td>${int.code}</td>`)
                            ar.push(`<td>${documentation}</td>`)
                            ar.push("</tr>")
                        })
                        ar.push("</tbody></table><br/>");
                    }

                    if (res.operation) {
                        ar.push('<div class="row"><span class="lead">Extended Operations</span></div>');
                        ar.push("<table class='table table-condensed table-hover'>")
                        ar.push("<thead><tr><th width='30%'>Operation</th><th width='70%'>Documentation</th></tr></thead>")
                        ar.push("<tbody>");
                        res.operation.forEach(function (extOp) {
                            let documentation = extOp.documentation ? md.render(extOp.documentation) : md.render(hashOperation[extOp.name]);
                            ar.push("<tr>")
                            ar.push(`<td>\$${extOp.name}</td>`)
                            ar.push(`<td>${documentation}</td>`)
                            ar.push("</tr>")
                        })
                        ar.push("</tbody></table><br/>")
                    }

                    if (res.searchParam) {
                        ar.push('<div class="row"><span class="lead">Search Parameters:</span></div>');
                        ar.push("<table class='table table-condensed table-hover'>");
                        ar.push("<thead><tr><th width='15%'>Name</th><th>Type</th><th width='70%'>Documentation</th></tr></thead>")
                        ar.push("<tbody>");

                        res.searchParam.forEach(function (int) {
                            let documentation = cleanText(int.documentation) || ""
                            ar.push("<tr>")
                            ar.push(`<td>${int.name}</td>`)
                            ar.push(`<td><a target='_blank' href="http://hl7.org/fhir/search.html#${int.type}">${int.type}</a></td>`)
                            if (int.definition) {
                                if(int.definition.startsWith("http://"))
                                    documentation=`<div><a target='_blank' href="${int.definition}">${int.definition}</a></div>`;
                                else
                                    documentation = "<div>Definition: " + int.definition + "</div>" + documentation
                            }
                            ar.push(`<td>${documentation}</td>`)
                            ar.push("</tr>")
                        })
                        ar.push("</tbody></table><br/>")
                    }

                    if (res.searchInclude) {
                        ar.push('<div><span class="lead">Search includes:</span></div>')
                        ar.push("<table class='table table-bordered table-condensed'>")
                        ar.push("<thead><tr><th width='15%'>Name</th></tr></thead>")
                        ar.push("<tbody>");
                        res.searchInclude.forEach(function (inc) {
                            ar.push("<tr>")
                            ar.push(`<td>${inc}</td>`)
                            ar.push("</tr>")
                        })
                        ar.push("</tbody></table><br/>")
                        ar.push("<em>These are the _include parameters that are supported on searches</em><br/>")
                    }
                    // Close the container, panel-body and panel
                    ar.push("</div></div></div>");
                })
            })
        }
    })
}
ar.push("</div>")

let file1 = ar.join('\r\n')
fs.writeFileSync(outFile, file1);

//ensure that characters that can update XML are 'escpaed'
function cleanText(s) {
    if (s) {
        return md.render(s)
    }
}