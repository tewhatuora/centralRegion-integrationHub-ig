Mapping:  NZCentralRegionHL7V2ToAllergyIntolerance
Source:   NZCentralRegionAllergyIntolerance
Target:   "https://standards.digital.health.nz/ns/central-region/hl7-v2"
Id:       nzcr-allergyintolerance-from-hl7v2
Title:    "Central Region Message Specification (1.14)"
Description: "Central Region Message Specification (1.14) - Allergy Intolerance from ADT^031 ZAL where Alert Type field `ZAL-2.1` with values from  [Allergy Alert Category](./ValueSet-nzcr-allergy-alert-category-vs.html) codes."

* identifier.use -> "'usual'"
* identifier.system -> "'https://standards.digital.health.nz/ns/pas-alert-id'"
* identifier.value -> "PID-3.1 + '-' + ZAL2.1 + '-' + ZAL-3.1" "Concatenation of PatientId, Alert Category and Alert Code"

* clinicalStatus
  * coding
    * code -> "ZAL-8 & ZAL-9" "**if** ZAL-8 is empty **AND** ZAL-9 is in the future or empty **then** 'active' **else** 'inactive'"
    * system -> "'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical'"
    * display -> "**if** ZAL-8 is empty **AND** ZAL-9 is in the future or empty **then** 'Active' **else** 'Inactive'"


* verificationStatus
  * coding
    * code -> "'confirmed'" "No info available for any other coding"
    * system -> "'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification'"
    * display -> "'Confirmed'"

* type -> "allergy | intolerance" "TODO:  check if data available\n**Note:** not coding, so no system or display sub-fields"

* category -> "food | medication | environment | biologic" "Lookup from ZAL-2.1 - perhaps ConceptMap from [A3 A4 Code System](./CodeSystem-nzcr-allergy-reaction-a3a4-cs.html) or [H1 H3 Code System](/CodeSystem-nzcr-allergy-reaction-h1h3-cs.html)\n**Note:** not coding, so no system or display sub-fields"

* criticality -> "low | high | unable-to-assess" "perhaps derived from severity ??\n**Note:** not coding, so no system or display sub-fields"

* code.coding.code -> "ZAL-3.1"
* code.coding.system -> " " "One of:
* https://standards.digital.health.nz/ns/central-region/allergy-alert-code-a3
* https://standards.digital.health.nz/ns/central-region/allergy-alert-code-a4
* https://standards.digital.health.nz/ns/central-region/allergy-alert-code-h1
* https://standards.digital.health.nz/ns/central-region/allergy-alert-code-h3

depending upon value of ZAL-2.1"
* code.coding.display -> "ZAL-3.2"

* patient.reference -> " " "read-only field"
* patient.type -> "'Patient'"
* patient.identifier -> " " "Select the NHI identifier from the list provided; where PID-3.4.2 = 2.16.840.1.113883.2.18.2"
* patient.identifier.use -> "'usual'"
* patient.identifier.system -> "'https://standards.digital.health.nz/ns/nhi-id'"
* patient.identifier.value -> "PID-3.1"
* patient.identifier.type.coding
  * code -> "'MR'"
  * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
  * display -> "'Medical record number'"
* patient.display -> "PID-5.1 + ', ' + PID-5.2 + ' ' + PID-5.3 + ' ' + PID-5.5"

* onsetDateTime -> "ZAL-5"  "if there is no ZAL-9 value to complete onsetPeriod\n**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"
* onsetPeriod.start -> "ZAL-5" "only if there is ZAL-9 value to complete Period\n**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"
* onsetPeriod.end -> "ZAL-9" 

* recorder.reference -> " " "read-only field"
* recorder.type -> "'Practitioner'"
* recorder.identifier.use -> "'usual'"
* recorder.identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-practitioner-id'"
* recorder.identifier.value -> "ZAL-10.1"
* recorder.identifier.type.coding -> " " "Practitioner Identifiers are locally assigned within PAS"
  * code -> "'LR'"
  * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
  * display -> "'Local registry ID'"

* recorder.display -> "ZAL-10.2 + ', ' + ZAL-10.3 + ' ' + ZAL-10.4 + ' ' + ZAL-10.5"

* note -> "ZAL-14"

* extension[allergy-alert].url -> "'https://standards.digital.health.nz/ns/central-region/alert'"

// TODO: severityLevel should be integer??
* extension[allergy-alert].extension[severityLevel].url -> "'severityLevel'"
* extension[allergy-alert].extension[severityLevel].valueString -> "ZAL-6"   "TODO: severityLevel should be integer"

* extension[allergy-alert].extension[allergyReaction].url -> "'allergyReaction'"
* extension[allergy-alert].extension[allergyReaction].valueString -> "ZAL-4"

* extension[allergy-alert].extension[reviewDate].url -> "'reviewDate'"
* extension[allergy-alert].extension[reviewDate].valueDate -> "ZAL-7" "**Note:** ISO-8601 date format includes dashes"

* extension[allergy-alert].extension[inactiveDate].url -> "'inactiveDate'"
* extension[allergy-alert].extension[inactiveDate].valueDate -> "ZAL-8" "**Note:** ISO-8601 date format includes dashes"

* extension[allergy-alert].extension[lastUpdatedDateTime].url -> "'lastUpdatedDateTime'"
* extension[allergy-alert].extension[lastUpdatedDateTime].valueDateTime -> "ZAL-11" "**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"

* extension[allergy-alert].extension[lastUpdatedBy].url -> "'lastUpdatedBy'"
* extension[allergy-alert].extension[lastUpdatedBy].valueString -> "ZAL-12.1 + ' - ' + ZAL-12.2" "Not to be confused with Recorder"

* extension[allergy-alert].extension[recordingHospital].url -> "'recordingHospital'"
* extension[allergy-alert].extension[recordingHospital].valueCoding.code -> "ZAL-13.1"
* extension[allergy-alert].extension[recordingHospital].valueCoding.system -> "'https://standards.digital.health.nz/fhir/central-region/hospital-code'"
* extension[allergy-alert].extension[recordingHospital].valueCoding.display -> "ZAL-13.2"

* extension[hl7v2Message].url -> "'https://standards.digital.health.nz/ns/central-region/hl7v2-message'"
* extension[hl7v2Message].valueBase64Binary -> "Entire incoming HL7 message" "Base64 encoded"