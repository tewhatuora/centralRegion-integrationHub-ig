Mapping:  NZCentralRegionHL7V2ToReferral
Source:   NZCentralRegionReferral
Target:   "https://standards.digital.health.nz/ns/central-region/hl7-v2"
Id:       nzcr-referral-from-hl7v2
Title:    "Central Region Message Specification (1.14)"
Description:    "Central Region Message Specification (1.14) - Referral (ServiceRequest) from REF^I12"

* -> "ServiceRequest"
* identifier.value -> "RF1-11.1"
* identifier.use -> "'usual'"
* identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-referral-id'"
* identifier.type.coding.code -> "'RI'"
* identifier.type.coding.system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
* identifier.type.coding.display -> "'Referral Identifier'"

* status -> "draft | active | revoked" "**if** RF1-1.1 == 'P' **then** 'draft'\r\n
  **elif** RF1-1.1 == 'A' **then** 'active'\r\n
  **elif** RF1-1.1 == 'R' **then** 'revoked'\r\n
  **else** 'unknown'"

* priority -> "$translate(RF1-2.1)" "Use [Referral Priority](ConceptMap-nzcr-referral-priority-fhir-map.html) concept map\r\n
  **Note:** use of two different CodeSystems - https://standards.digital.health.nz/ns/central-region/referral-priority and http://terminology.hl7.org/CodeSystem/v2-0280"

* intent -> "'order'"

* code.coding
  * code -> "ZXV-34.1"
  * display -> "ZXV-34.2"
  * system -> "'https://standards.digital.health.nz/ns/central-region/referral-type'"

* authoredOn -> "ZXV-9" "**Note:** ISO-8601 Date has field separators"

* reasonCode.coding
  * code -> "ZXV-7.1"
  * display  -> "ZXV-7.2"
  * system -> "'https://standards.digital.health.nz/ns/central-region/referral-reason'"

* locationCode.coding
  * code -> "ZXV-40.1"
  * display  -> "ZXV-40.2"
  * system -> "'https://standards.digital.health.nz/ns/central-region/referral-department'"

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

* requester -> "PV1-8 / PRD" "Repeat for each PV1-8 (or first PRD if no PV1 segment)"
* requester.reference -> "n/a" "Internal GUID"
* requester.type -> "'Practitioner'"
* requester.identifier -> " " "Only available from PV1-8"
* requester.identifier.use -> "'usual'"
* requester.identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-practitioner-id'"
* requester.identifier.value -> "PV1-8.1"
* requester.identifier.type.coding -> " " "Practitioner Identifiers are locally assigned within PAS"
  * code -> "'LR'"
  * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
  * display -> "'Local registry ID'"
* requester.display -> "PV1-8.2/PRD-2.1 + ', ' + PV1-8.3/PRD-2.2 + ' ' + PV1-8.4/PRD-2.5 + ' ' + PV1-8.6" "from PV1-8 or second PRD-2"


* performer -> "PV1-7" "Repeat for each PV1-7 (or second PRD if no PV1 segment)"
* performer.reference -> "n/a" "Internal GUID"
* performer.type -> "'Practitioner'"
* performer.identifier -> " " "Only available from PV1-7"
* performer.identifier.use -> "'usual'"
* performer.identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-practitioner-id'"
* performer.identifier.value -> "PV1-7.1"
* performer.identifier.type.coding -> " " "Practitioner Identifiers are locally assigned within PAS"
  * code -> "'LR'"
  * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
  * display -> "'Local registry ID'"
* performer.display -> "PV1-7.2/PRD-2.1 + ', ' + PV1-7.3/PRD-2.2 + ' ' + PV1-7.4/PRD-2.5 + ' ' + PV1-7.6" "from PV1-7 or second PRD-2"


* extension[referral]
  * extension[consultingPractitioner].valueReference
    * type -> "'Practitioner'"
    * identifier
      * use -> "'usual'"
      * system -> "'https://standards.digital.health.nz/ns/central-region/pas-practitioner-id'"
      * value -> "PV1-9.1"
      * type.coding
        * code -> "'LR'"
        * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
        * display -> "'Local Registry ID'"
    * display -> "PV1-9.1"

  * extension[preferredSite].valueCoding
    * code -> "ZXV-35.1"
    * system -> "'https://standards.digital.health.nz/ns/central-region/referral-site'"
    * display -> "ZXV-35.2"
    
  * extension[referralSource].valueCoding
    * code -> "ZXV-15.1"
    * system -> "'https://standards.digital.health.nz/ns/central-region/referral-source'"
    * display -> "ZXV-15.2"

  * extension[referringPractice].valueReference
    * type -> "'Organisation'"
    * identifier
      * use -> "'usual'"
      * system -> "'https://standards.digital.health.nz/ns/central-region/referring-practice'"
      * value -> "ZXV-35.1"
      * type.coding
        * code -> "'LR'"
        * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
        * display -> "'Local Registry ID'"
    * display -> "ZXV-35.2"

  * extension[healthPurchaser].valueCoding
    * code -> "ZXV-51.1"
    * system -> "'https://standards.digital.health.nz/ns/central-region/health-purchaser'"
    * display -> "ZXV-51.2"

  * extension[clinicType].valueCoding
    * code -> "ZXV-37.1"
    * system -> "'https://standards.digital.health.nz/ns/central-region/referral-clinic'"
    * display -> "ZXV-37.2"

  * extension[lastUpdated].value[x] -> "ZXV-41" "**Note:** ISO-8601 datetime format includes dashes, colons, 'T' and '+12:00' timezone"
  * extension[informGP].valueBoolean -> "ZXV-19" "**if** ZXV-19 == 'Y' **then** 'true' **else** 'false'"

* meta.extension[hl7v2Message].url -> "'https://standards.digital.health.nz/ns/central-region/hl7-message'"
* meta.extension[hl7v2Message].valueBase64Binary -> "Entire incoming HL7 message" "Base64 encoded"

