Mapping:  NZCentralRegionHL7V2ToClinicalImpression
Source:   NZCentralRegionClinicalImpression
Target:   "https://standards.digital.health.nz/ns/central-region/hl7-v2"
Id:       nzcr-clinical-impression-from-hl7v2
Title:    "Central Region Message Specification (1.14)"
Description: "Central Region Message Specification (1.14) - ClinicalImpression from ADT^031 ZLS segment"



* subject
  * reference -> " " "read-only field"
  * type -> "'Patient'"
  * identifier -> "" "Select the NHI identifier from the list provided; where PID-3.4.2 = 2.16.840.1.113883.2.18.2"
  * identifier.use -> "'usual'"
  * identifier.system -> "'https://standards.digital.health.nz/ns/nhi-id'"
  * identifier.value -> "PID-3.1"
  * identifier.type.coding
    * code -> "'MR'"
    * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
    * display -> "'Medical record number'"
  * display -> "PID-5.1 + ', ' + PID-5.2 + ' ' + PID-5.3 + ' ' + PID-5.5"

* assessor
  * reference -> " " "read-only field"
  * type -> "'Practitioner'"
  * identifier.use -> "'usual'"
  * identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-practitioner-id'"
  * identifier.value -> "ZLS-6.1"
  * identifier.type.coding -> "" "Practitioner Identifiers are locally assigned within PAS"
    * code -> "'LR'"
    * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
    * display -> "'Local registry ID'"
  * display -> "ZLS-6.2 + ', ' + ZLS-6.3 + ' ' + ZLS-6.4 + ' ' + ZLS-6.5"

* extension[mentalHealth].url -> "'https://standards.digital.health.nz/ns/central-region/alert'"

* extension[mentalHealth].extension[legalStatus].url -> "'legalStatus'"
* extension[mentalHealth].extension[legalStatus].value[x] -> ""
  * code -> "ZLS-2.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-legal-status'"
  * display -> "ZLS-2.2"

* extension[mentalHealth].extension[reviewStatus].url -> "'reviewStatus'"
* extension[mentalHealth].extension[reviewStatus].value[x] -> ""
  * code -> "ZLS-5.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-review-status'"
  * display -> "ZLS-5.2"

* extension[mentalHealth].extension[startDateTime].url -> "'startDateTime'"
* extension[mentalHealth].extension[startDateTime].value[x] -> "ZLS-3" "**Note**ISO DateTime has field separators and '+1200' timezone indicator"

* extension[mentalHealth].extension[startDateTime].url -> "'endDateTime'"
* extension[mentalHealth].extension[startDateTime].value[x] -> "ZLS-4" "**Note**ISO DateTime has field separators and '+1200' timezone indicator"

* effectiveDateTime -> "ZLS-8" "**Note**ISO DateTime has field separators and '+1200' timezone indicator"

* extension[mentalHealth].extension[location].url -> "'location'"
* extension[mentalHealth].extension[location].value[x] -> ""
  * code -> "ZLS-7.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-review-location'"
  * display -> "ZLS-7.2"

* summary -> "ZLS-10"

* extension[mentalHealth].extension[reminderDate].url -> "'reminderDate'"
* extension[mentalHealth].extension[reminderDate].value[x] -> "ZLS-9" "**Note**ISO Date has field separators"

* extension[mentalHealth].extension[addedBy].url -> "'addedBy'"
* extension[mentalHealth].extension[addedBy].value[x] -> "ZLS-11.1 + ' - ' + ZLS=11.2"

* extension[mentalHealth].extension[addedDateTime].url -> "'addedDateTime'"
* extension[mentalHealth].extension[addedDateTime].value[x] -> "ZLS-12" "**Note**ISO DateTime has field separators and '+1200' timezone indicator"

* extension[mentalHealth].extension[lastUpdatedBy].url -> "'lastUpdatedBy'"
* extension[mentalHealth].extension[lastUpdatedBy].value[x] -> "ZLS-13.1 + ' - ' + ZLS=13.2"

* extension[mentalHealth].extension[lastUpdatedDateTime].url -> "'addedDateTime'"
* extension[mentalHealth].extension[lastUpdatedDateTime].value[x] -> "ZLS-14" "**Note**ISO DateTime has field separators and '+1200' timezone indicator"

* extension[mentalHealth].extension[supplementaryLegalStatus].url -> "'supplementaryLegalStatus'"
* extension[mentalHealth].extension[supplementaryLegalStatus].value[x] -> ""
  * code -> "ZLS-15.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-legal-status'"
  * display -> "ZLS-15.2"

* extension[mentalHealth].extension[supplementaryLegalStatusDate].url -> "'supplementaryLegalStatusDate'"
* extension[mentalHealth].extension[supplementaryLegalStatusDate].value[x] -> "ZLS-16" "**Note**ISO Date has field separators"

* extension[mentalHealth].extension[reviewDate].url -> "'reviewDate'"
* extension[mentalHealth].extension[reviewDate].value[x] -> "ZLS-17" "**Note**ISO Date has field separators"

* extension[mentalHealth].extension[courtNoticeSentDate].url -> "'courtNoticeSentDate'"
* extension[mentalHealth].extension[courtNoticeSentDate].value[x] -> "ZLS-18" "**Note**ISO Date has field separators"

* extension[mentalHealth].extension[tribunalDate].url -> "'tribunalDate'"
* extension[mentalHealth].extension[tribunalDate].value[x] -> "ZLS-19" "**Note**ISO Date has field separators"

* extension[mentalHealth].extension[tribunalDate].url -> "'tribunalDate'"
* extension[mentalHealth].extension[tribunalDate].value[x] -> "ZLS-20" "**Note**ISO Date has field separators"

* extension[mentalHealth].extension[courtLodgedDate].url -> "'courtLodgedDate'"
* extension[mentalHealth].extension[courtLodgedDate].value[x] -> "ZLS-21" "**Note**ISO Date has field separators"

* extension[mentalHealth].extension[courtType].url -> "'courtType'"
* extension[mentalHealth].extension[courtType].value[x] -> ""
  * code -> "ZLS-22.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-legal-status'"
  * display -> "ZLS-22.2"

* extension[hl7v2Message].url -> "'https://standards.digital.health.nz/ns/central-region/hl7-message'"
* extension[hl7v2Message].valueBase64Binary -> "Entire incoming HL7 message" "Base64 encoded"