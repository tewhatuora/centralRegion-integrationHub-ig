// Example Instances of Patient with different address fields
Instance: PalliativeCare
InstanceOf: NZCentralRegionFlag
Description: "An example of a Flag alert derived from ZAL custom segment, in Te Whatu Ora Central Region"
Usage:  #example

* identifier
  * use = #usual
  * system = $NZCentralRegionLocalAlertId
  * value = "WYS1973-H2-K01"

* status = #active

* category
  * coding[rawSource]
    * code = #H2
    * display = "Medical condition"
    // * system = $NZCentralRegionAlertCategoryCS
  * coding[fhirOrig]
    * code = #safety
    * display = "Safety"
    // * system = $HL7FlagCategoryCS 

* code
  * coding 
    * code = #K01
    * system  = $NZCentralRegionFlagAlertCodeH2CS
    * display = "Known hospice/pall"

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
    * value = "WYS1973"

* period.start = "2020-08-20"

* author
  * type = #Practitioner
  * identifier
    * use = #usual
    * type
      * coding
        * code = #LR
        * system = $HL7IdentifierTypeCS
        * display = "Local Registry ID"
    * system = $NZCentralRegionPASPractitioner
    * value = "22548"
  * display = "Ramadan, Mohamed Mahmoud S DR"

* extension[flag-alert]
  * extension[webPASCategory].valueCoding
    * code = #H2
    * system = "https://standards.digital.health.nz/ns/central-region/alert-category"
    * display = "Medical condition"

  * extension[severityLevel].valueString = "9"    // TODO: severityLevel should be integer??
  * extension[reviewDate].valueDate = "2020-10-20"
  * extension[lastUpdatedBy].valueString = "melissab - Melissa Brosnan MDHB"
  * extension[lastUpdatedDateTime].valueDateTime = "2020-08-26T14:23:57+12:00"
  * extension[recordingHospital].valueCodeableConcept
    * coding
      * code = #PNH
      * system = $NZCentralRegionHospitalCS
      * display = "Palmerston North Hospital"
  * extension[comments].valueString = "Palliative Care, Contact Arohanui Hospice, Ph (06) 3566606"

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="
