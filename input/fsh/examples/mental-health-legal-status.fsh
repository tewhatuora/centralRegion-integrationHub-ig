// Example Instances of Patient with different address fields
Instance: MentalHealthLegalStatus
InstanceOf: NZCentralRegionClinicalImpression
Description: "An example of a mental health legal status review ClinicalImpression derived from ZLS custom segment, in Te Whatu Ora Central Region"
Usage:  #example

* identifier
  * use = #usual
  * system = $NZCentralRegionLocalClinicalImpressionId
  * value = "ZHY5362-20220301165204"

* status = #completed

* subject
  * type = #Patient
  * identifier
    * use = #usual
    * type
      * coding
        * code = #MR
        * system = $HL7IdentifierTypeCS
        * display = "Medical record number"
    * system = $NZBaseNHI
    * value = "ZHY5362"


* assessor
  * type = #Practitioner
  * identifier
    * use = #usual
    * type
      * coding
        * code = #LR
        * system = $HL7IdentifierTypeCS
        * display = "Local Registry ID"
    * system = $NZCentralRegionPASPractitioner
    * value = "47949"
  * display = "Barnes, Abby Dr"

* effectiveDateTime = "2022-08-28T16:52:04+12:00"

* note[+]
  * text = "This is comments made within the patients legal status Extra comments made within the patients legal status"

* extension[mentalHealth]
  * extension[legalStatus].valueCoding
    * code = #R11
    * display = "CPMIP S34(1)(a)(i)"
    * system = "https://standards.digital.health.nz/ns/central-region/mental-health-legal-status"

  * extension[reviewStatus].valueCoding
    * code = #R04
    * display = "Not reas practical"
    * system = "https://standards.digital.health.nz/ns/central-region/mental-health-review-status"

  * extension[startDateTime].valueDateTime = "2022-03-01T16:52:04+12:00"

  * extension[reviewDate].valueDate = "2020-10-20"
  * extension[location].valueCoding
    * code = #M36
    * display = "PN Police"
    * system = "https://standards.digital.health.nz/ns/central-region/mental-health-review-location"

  * extension[reminderDate].valueDate = "2022-08-14"

  * extension[addedBy].valueString = "theresby - Theresa Byrne MDHB"
  * extension[addedDateTime].valueDateTime = "2022-03-01T16:53:18+12:00"

  * extension[lastUpdatedBy].valueString = "theresby - Theresa Byrne MDHB"
  * extension[lastUpdatedDateTime].valueDateTime = "2022-03-01T16:53:26+12:00"

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="
