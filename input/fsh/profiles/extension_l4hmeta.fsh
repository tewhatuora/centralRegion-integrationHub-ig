// meta.extension definitions used by L4H Template engine
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
* ^context[=].expression = "Organization.meta"
* ^context[+].type = #element
* ^context[=].expression = "Flag.meta"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance.meta"
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression.meta"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.meta"

* value[x] only base64Binary


Extension: L4HTimestamp
Id:   nzcr-l4hmeta-timestamp
Title:  "Process TimeStamp"
Description: "Date and time the source HL7v2 message was translated into FHIR Resource"

* ^status = #active
* ^url = $L4HProcessTimestamp

* ^context[+].type = #element
* ^context[=].expression = "Patient.meta"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.meta"
* ^context[+].type = #element
* ^context[=].expression = "Organization.meta"
* ^context[+].type = #element
* ^context[=].expression = "Flag.meta"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance.meta"
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression.meta"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.meta"

* value[x] only dateTime




Extension: L4HSourceEventTrigger
Id:   nzcr-l4hmeta-source-event-trigger
Title:  "Source Event Trigger"
Description: "The HL7v2 message/event trigger that was translated into FHIR Resource (eg A31, I13, etc)"

* ^status = #active
* ^url = $L4HEventTrigger

* ^context[+].type = #element
* ^context[=].expression = "Patient.meta"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.meta"
* ^context[+].type = #element
* ^context[=].expression = "Organization.meta"
* ^context[+].type = #element
* ^context[=].expression = "Flag.meta"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance.meta"
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression.meta"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.meta"

* value[x] only CodeableConcept
* value[x] from http://terminology.hl7.org/ValueSet/v2-0003




Extension: L4HSourceRecordType
Id:   nzcr-l4hmeta-source-record-type
Title:  "Source Record Type"
Description: "The HL7v2 record type that was translated into FHIR Resource (eg ADT, REF, etc)"

* ^status = #active
* ^url = $L4HRecordType

* ^context[+].type = #element
* ^context[=].expression = "Patient.meta"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.meta"
* ^context[+].type = #element
* ^context[=].expression = "Organization.meta"
* ^context[+].type = #element
* ^context[=].expression = "Organization.meta"
* ^context[+].type = #element
* ^context[=].expression = "Flag.meta"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance.meta"
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression.meta"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.meta"

* value[x] only CodeableConcept
* value[x] from http://terminology.hl7.org/ValueSet/v2-0076



Extension: L4HSourceRecordId
Id:   nzcr-l4hmeta-source-record-id
Title:  "Source Record ID"
Description: "The HL7v2 record ID that was translated into FHIR Resource"

* ^status = #active
* ^url = $L4HRecordId

* ^context[+].type = #element
* ^context[=].expression = "Patient.meta"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.meta"
* ^context[+].type = #element
* ^context[=].expression = "Organization.meta"
* ^context[+].type = #element
* ^context[=].expression = "Flag.meta"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance.meta"
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression.meta"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.meta"

* value[x] only string




Extension: L4HSourceDataModelVersion
Id:   nzcr-l4hmeta-source-data-model-version
Title:  "Source Data Model Version"
Description: "The HL7v2 version number for the message/event that was translated into FHIR Resource"

* ^status = #active
* ^url = $L4HDataModelVersion

* ^context[+].type = #element
* ^context[=].expression = "Patient.meta"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.meta"
* ^context[+].type = #element
* ^context[=].expression = "Organization.meta"
* ^context[+].type = #element
* ^context[=].expression = "Flag.meta"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance.meta"
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression.meta"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.meta"

* value[x] only string




Extension: L4HProcessClientId
Id:   nzcr-l4hmeta-process-client-id
Title:  "Process Client ID"
Description: "The HL7v2 Source Client Id for the message/event that was translated into FHIR Resource"

* ^status = #active
* ^url = $L4HClientId

* ^context[+].type = #element
* ^context[=].expression = "Patient.meta"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.meta"
* ^context[+].type = #element
* ^context[=].expression = "Organization.meta"
* ^context[+].type = #element
* ^context[=].expression = "Flag.meta"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance.meta"
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression.meta"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.meta"

* value[x] only string





Extension: L4HTemplateVersion
Id:   nzcr-l4hmeta-template-version
Title:  "L4H Template Version"
Description: "The version number of the l4h templates used to translate the hl7v2 message into FHIR Resource"

* ^status = #active
* ^url = $L4HTemplateVersion

* ^context[+].type = #element
* ^context[=].expression = "Patient.meta"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.meta"
* ^context[+].type = #element
* ^context[=].expression = "Organization.meta"
* ^context[+].type = #element
* ^context[=].expression = "Flag.meta"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance.meta"
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression.meta"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.meta"

* value[x] only string
