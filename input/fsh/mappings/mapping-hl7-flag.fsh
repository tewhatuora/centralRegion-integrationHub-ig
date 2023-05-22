Mapping:  NZCentralRegionV2ToFlag
Source:   NZCentralRegionFlag
Target:   "https://standards.digital.health.nz/ns/central-region/hl7-v2"
Id:       nzcr-flag-from-hl7v2
Title:    "Central Region Message Specification (1.14)"

* category -> "ZAL-2"
* category.coding.code -> "ZAL-2.1"
* category.coding.system -> "https://standards.digital.health.nz/ns/central-region/alert-type"
* category.coding.display -> "ZAL-2.2"

* code -> "ZAL-3"
* code.coding.code -> "ZAL-3.1"
* code.coding.system -> " " "One of:
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-nhimws
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-mc
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-ma
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-ls
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h2
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h4
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h5
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h6
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h7
* https://standards.digital.health.nz/ns/central-region/flag-alert-code-h8"
* code.coding.display -> "ZAL-3.2"

* period.start -> "ZAL-5"
* period.end -> "ZAL-9"   // or perhaps ZAL-8  - depends if we're using inactiveDate or endDate

* subject.reference -> " " "read-only field"
* subject.type -> "'Patient'"
* subject.identifier -> "" "Select the NHI identifier from the list provided; where PID-3.4.2 = 2.16.840.1.113883.2.18.2"
* subject.identifier.use -> "'usual'"
* subject.identifier.system -> "'https://standards.digital.health.nz/ns/nhi-id'"
* subject.identifier.value -> "PID-3.1"
* subject.identifier.type.coding
  * code -> "'MR'"
  * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
  * display -> "'Medical record number'"
* subject.display -> "PID-5.1 + ', ' + PID-5.2 + ' ' + PID-5.3 + ' ' + PID-5.5"

* author.reference -> " " "read-only field"
* author.type -> "'Practitioner'"
* author.identifier.use -> "'usual'"
* author.identifier.system -> "'https://standards.digital.health.nz/ns/pas-practitioner-id'"
* author.identifier.value -> "ZAL-10.1"
* author.display -> "ZAL-10.1 + ', ' + ZAL-10.2 + ' ' + ZAL-10.3 + ' ' + ZAL-10.5"

* extension[flag-alert].extension[reviewDate] -> "ZAL-7"
* extension[flag-alert].extension[inactiveDate] -> "ZAL-9"
* extension[flag-alert].extension[lastUpdatedDateTime] -> "ZAL-11"
* extension[flag-alert].extension[lastUpdatedBy] -> "ZAL-11.1 + ' - ' + ZAL-11.2" "Not to be confused with Author"
* extension[flag-alert].extension[recordingHospital].value[x].code -> "ZAL-13.1"
* extension[flag-alert].extension[recordingHospital].value[x].system -> "'https://standards.digital.health.nz/fhir/central-region/hospital-code'"
* extension[flag-alert].extension[recordingHospital].value[x].display -> "ZAL-13.2"
* extension[flag-alert].extension[comments] -> "ZAL-14"