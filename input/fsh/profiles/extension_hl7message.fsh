Extension: NZCentralRegionHL7v2Message
Id:   nzcr-hl7v2-message
Title:  "HL7 v2 Message"
Description: "Base64 encoded string containing the original HL7 v2 message that was used to create / update the FHIR resource"

* ^status = #active
* ^url = $NZCentralRegionHL7v2Message

* ^context[+].type = #element
* ^context[=].expression = "Patient.meta"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.meta"
* ^context[+].type = #element
* ^context[=].expression = "Flag.meta"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance.meta"
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression.meta"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.meta"

* value[x] only base64Binary
