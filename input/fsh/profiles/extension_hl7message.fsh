Extension: NZCentralRegionHL7v2Message
Id:   nzcr-hl7v2-message
Title:  "HL7 v2 Message"
Description: "Base64 encoded string containing the original HL7 v2 message that was used to create / update the FHIR resource"

* ^status = #active
* ^url = $NZCentralRegionHL7v2Message

* ^context[+].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "Flag"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance"

* value[x] only base64Binary