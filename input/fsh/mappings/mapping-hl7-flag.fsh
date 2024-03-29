Mapping:  NZCentralRegionHL7V2ToFlag
Source:   NZCentralRegionFlag
Target:   "https://standards.digital.health.nz/ns/central-region/hl7-v2"
Id:       nzcr-flag-from-hl7v2
Title:    "Central Region Message Specification (1.14)"
Description: "Central Region Message Specification (1.14) - Flag from ADT^031 ZAL where Alert Type field `ZAL-2.1` with values from 
[Flag Alert Code](./ValueSet-nzcr-flag-alert-code-vs.html) codes."

* category -> "ZAL-2"
* category.coding.code -> "ZAL-2.1"
* category.coding.system -> "https://standards.digital.health.nz/ns/central-region/alert-category"
* category.coding.display -> "ZAL-2.2"

* identifier.use -> "'usual'"
* identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-alert-id'"
* identifier.value -> "PID-3.1 + '-' + ZAL2.1 + '-' + ZAL-3.1" "Concatenation of PatientId, Alert Category and Alert Code"

* status -> "ZAL-8 & ZAL-9" "**if** ZAL-8 is empty **AND** ZAL-9 is in the future or empty **then** 'active' **else** 'inactive'"

* category -> "ZAL-2"
* category.coding.code -> "ZAL-2.1"
* category.coding.system -> "'https://standards.digital.health.nz/ns/central-region/alert-category'"
* category.coding.display -> "ZAL-2.2"

* code -> "ZAL-3"
* code.coding.code -> "ZAL-3.1"
* code.coding.system -> " " "One of:
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-ls
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h2
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h4
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h5
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h6
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h7
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h8"
* code.coding.display -> "ZAL-3.2"
* code.text -> "ZAL-3.2" "When ZAL-3.1 is one of:
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-nhimws
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-mc
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-ma
ie: these categories denote 'free-text' alert codes
"

* subject.reference -> " " "read-only field"
* subject.type -> "'Patient'"
* subject.identifier -> " " "Select the NHI identifier from the list provided; where PID-3.4.2 = 2.16.840.1.113883.2.18.2"
* subject.identifier.use -> "'usual'"
* subject.identifier.system -> "'https://standards.digital.health.nz/ns/nhi-id'"
* subject.identifier.value -> "PID-3.1"
* subject.identifier.type.coding
  * code -> "'MR'"
  * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
  * display -> "'Medical record number'"
* subject.display -> "PID-5.1 + ', ' + PID-5.2 + ' ' + PID-5.3 + ' ' + PID-5.5"

* period.start -> "ZAL-5" "**Note:** ISO-8601 date format includes dashes"
* period.end -> "ZAL-9"

* author.reference -> " " "read-only field"
* author.type -> "'Practitioner'"
* author.identifier.use -> "'usual'"
* author.identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-practitioner-id'"
* author.identifier.value -> "ZAL-10.1"
* author.identifier.type.coding -> " " "Practitioner Identifiers are locally assigned within PAS"
  * code -> "'LR'"
  * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
  * display -> "'Local registry ID'"
* author.display -> "ZAL-10.1 + ', ' + ZAL-10.2 + ' ' + ZAL-10.3 + ' ' + ZAL-10.5"

* extension[flag-alert].url -> "'https://standards.digital.health.nz/ns/central-region/alert'"

// TODO: severityLevel should be integer??
* extension[flag-alert].extension[severityLevel].url -> "'severityLevel'"
* extension[flag-alert].extension[severityLevel].valueString -> "ZAL-6"  "TODO: severityLevel should be integer"

* extension[flag-alert].extension[reviewDate].url -> "'reviewDate'"
* extension[flag-alert].extension[reviewDate].valueDate -> "ZAL-7"

* extension[flag-alert].extension[inactiveDate].url -> "'inactiveDate'"
* extension[flag-alert].extension[inactiveDate].valueDate -> "ZAL-8"

* extension[flag-alert].extension[lastUpdatedDateTime].url -> "'lastUpdatedDateTime'"
* extension[flag-alert].extension[lastUpdatedDateTime].valueDateTime -> "ZAL-11" "**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"

* extension[flag-alert].extension[lastUpdatedBy].url -> "'lastUpdatedBy'"
* extension[flag-alert].extension[lastUpdatedBy].valueString -> "ZAL-12.1 + ' - ' + ZAL-12.2" "Not to be confused with Author"

* extension[flag-alert].extension[recordingHospital].url -> "'recordingHospital'"
* extension[flag-alert].extension[recordingHospital].valueCoding.code -> "ZAL-13.1"
* extension[flag-alert].extension[recordingHospital].valueCoding.system -> "'https://standards.digital.health.nz/fhir/central-region/hospital-code'"
* extension[flag-alert].extension[recordingHospital].valueCoding.display -> "ZAL-13.2"

* extension[flag-alert].extension[comments].url -> "'comments'"
* extension[flag-alert].extension[comments].valueString -> "ZAL-14"

* meta.extension[hl7v2Message].url -> "'https://standards.digital.health.nz/ns/central-region/hl7-message'"
* meta.extension[hl7v2Message].valueBase64Binary -> "Entire incoming HL7 message" "Base64 encoded"