Mapping:  NZCentralRegionHL7V2ToClinicalImpression
Source:   NZCentralRegionClinicalImpression
Target:   "https://standards.digital.health.nz/ns/central-region/hl7-v2"
Id:       nzcr-clinical-impression-from-hl7v2
Title:    "Central Region Message Specification (1.14)"
Description: "Central Region Message Specification (1.14) - ClinicalImpression from ADT^031 ZLS segment"


* identifier.use -> "'usual'"
* identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-clinical-impression-id'"
* identifier.value -> "PID-3.1 + '-' + ZLS-3" "Concatenation of PatientId and startDateTime"

* status -> "'completed'"

* subject
  * reference -> " " "read-only field"
  * type -> "'Patient'"
  * identifier -> " " "Select the NHI identifier from the list provided; where PID-3.4.2 = 2.16.840.1.113883.2.18.2"
  * identifier.use -> "'usual'"
  * identifier.system -> "'https://standards.digital.health.nz/ns/nhi-id'"
  * identifier.value -> "PID-3.1"
  * identifier.type.coding
    * code -> "'MR'"
    * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
    * display -> "'Medical record number'"
  * display -> "PID-5.1 + ', ' + PID-5.2 + ' ' + PID-5.3 + ' ' + PID-5.5"

* effectiveDateTime -> "ZLS-8" "Datetime the review/assessment took place"

* date -> "ZLS-12" "Date the assessment was recorded"

* assessor
  * reference -> " " "read-only field"
  * type -> "'Practitioner'"
  * identifier.use -> "'usual'"
  * identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-practitioner-id'"
  * identifier.value -> "ZLS-6.1"
  * identifier.type.coding -> " " "Practitioner Identifiers are locally assigned within PAS"
    * code -> "'LR'"
    * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
    * display -> "'Local registry ID'"
  * display -> "ZLS-6.2 + ', ' + ZLS-6.3 + ' ' + ZLS-6.4 + ' ' + ZLS-6.5"

* note
  * text -> "ZLS-10"


* extension[mentalHealth].url -> "'https://standards.digital.health.nz/ns/central-region/mental-health'"

* extension[mentalHealth].extension[legalStatus].url -> "'legalStatus'"
* extension[mentalHealth].extension[legalStatus].valueCoding -> " "   // non breaking space to shut the validator up
  * code -> "ZLS-2.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-legal-status'"
  * display -> "ZLS-2.2"

* extension[mentalHealth].extension[reviewStatus].url -> "'reviewStatus'"
* extension[mentalHealth].extension[reviewStatus].valueCoding -> " "   // non breaking space to shut the validator up
  * code -> "ZLS-5.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-review-status'"
  * display -> "ZLS-5.2"

* extension[mentalHealth].extension[startDateTime].url -> "'startDateTime'"
* extension[mentalHealth].extension[startDateTime].value[x] -> "ZLS-3" "**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"

* extension[mentalHealth].extension[endDateTime].url -> "'endDateTime'"
* extension[mentalHealth].extension[endDateTime].value[x] -> "ZLS-4" "**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"

* effectiveDateTime -> "ZLS-8" "**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"

* extension[mentalHealth].extension[location].url -> "'location'"
* extension[mentalHealth].extension[location].valueCoding -> " "   // non breaking space to shut the validator up
  * code -> "ZLS-7.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-review-location'"
  * display -> "ZLS-7.2"

* extension[mentalHealth].extension[reminderDate].url -> "'reminderDate'"
* extension[mentalHealth].extension[reminderDate].value[x] -> "ZLS-9" "**Note:** ISO-8601 Date has field separators"

* extension[mentalHealth].extension[addedBy].url -> "'addedBy'"
* extension[mentalHealth].extension[addedBy].value[x] -> "ZLS-11.1 + ' - ' + ZLS-11.2"

* extension[mentalHealth].extension[addedDateTime].url -> "'addedDateTime'"
* extension[mentalHealth].extension[addedDateTime].value[x] -> "ZLS-12" "**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"

* extension[mentalHealth].extension[lastUpdatedBy].url -> "'lastUpdatedBy'"
* extension[mentalHealth].extension[lastUpdatedBy].value[x] -> "ZLS-13.1 + ' - ' + ZLS-13.2"

* extension[mentalHealth].extension[lastUpdatedDateTime].url -> "'addedDateTime'"
* extension[mentalHealth].extension[lastUpdatedDateTime].value[x] -> "ZLS-14" "**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"

* extension[mentalHealth].extension[supplementaryLegalStatus].url -> "'supplementaryLegalStatus'"
* extension[mentalHealth].extension[supplementaryLegalStatus].valueCoding -> " "   // non breaking space to shut the validator up
  * code -> "ZLS-15.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-legal-status'"
  * display -> "ZLS-15.2"

* extension[mentalHealth].extension[supplementaryLegalStatusDate].url -> "'supplementaryLegalStatusDate'"
* extension[mentalHealth].extension[supplementaryLegalStatusDate].value[x] -> "ZLS-16" "**Note:** ISO-8601 Date has field separators"

* extension[mentalHealth].extension[reviewDate].url -> "'reviewDate'"
* extension[mentalHealth].extension[reviewDate].value[x] -> "ZLS-17" "**Note:** ISO Date has field separators"

* extension[mentalHealth].extension[courtNoticeSentDate].url -> "'courtNoticeSentDate'"
* extension[mentalHealth].extension[courtNoticeSentDate].value[x] -> "ZLS-18" "**Note:** ISO-8601 Date has field separators"

* extension[mentalHealth].extension[tribunalDate].url -> "'tribunalDate'"
* extension[mentalHealth].extension[tribunalDate].value[x] -> "ZLS-19" "**Note:** ISO-8601 Date has field separators"

* extension[mentalHealth].extension[courtLodgedDate].url -> "'courtLodgedDate'"
* extension[mentalHealth].extension[courtLodgedDate].value[x] -> "ZLS-20" "**Note:** ISO-8601 Date has field separators"

* extension[mentalHealth].extension[courtType].url -> "'courtType'"
* extension[mentalHealth].extension[courtType].valueCoding -> " "
  * code -> "ZLS-21.1"
  * system -> "'https://standards.digital.health.nz/ns/central-region/mental-health-court-type'"
  * display -> "ZLS-21.2"

* meta.extension[hl7v2Message].url -> "'https://standards.digital.health.nz/ns/central-region/hl7-message'"
* meta.extension[hl7v2Message].valueBase64Binary -> "Entire incoming HL7 message" "Base64 encoded"