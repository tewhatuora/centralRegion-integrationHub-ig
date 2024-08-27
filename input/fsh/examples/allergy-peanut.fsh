Instance: PeanutAllergy
InstanceOf: NZCentralRegionAllergyIntolerance
Description: "An example of an allergy/intolerance alert derived from ZAL custom segment, in Te Whatu Ora Central Region"
Usage:  #example

* identifier
  * use = #usual
  * system = $NZCentralRegionLocalAlertId
  * value = "WYS1973-H3-P01"

* clinicalStatus
  * coding
    * code = #active
    * system = $HL7AllergyClinicalStatusCS
    * display = "Active"

* verificationStatus
  * coding
    * code = #confirmed
    * system  = $HL7AllergyVerificationCS
    * display = "Confirmed"

* type = #allergy
* category = #food
* criticality = #low

* code
  * coding
    * code = #P01
    * system  = $NZCentralRegionAllergyAlertCodeH3CS
    * display = "Peanut"

* patient
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

* onsetDateTime = "2020-08-20T00:00:00+12:00"

* recorder
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

* note.text = "Palliative Care, Contact Arohanui Hospice, Ph (06) 3566606"

* extension[allergy-alert]
  * extension[webPASCategory].valueCoding
    * code = #H3
    * system = "https://standards.digital.health.nz/ns/central-region/alert-category"
    * display = "Other allergy"
  
  * extension[severityLevel].valueString = "S"   // TODO: severityLevel should be integer??
  * extension[allergyReaction].valueCodeableConcept
    * coding
      * code = #R04
      * system = "https://standards.digital.health.nz/ns/central-region/allergy-reaction-a3-a4"
      * display = "Nuts"
  * extension[reviewDate].valueDate = "2020-10-20"
  * extension[lastUpdatedBy].valueString = "melissab - Melissa Brosnan MDHB"
  * extension[lastUpdatedDateTime].valueDateTime = "2020-08-26T14:23:57+12:00"
  * extension[recordingHospital].valueCodeableConcept
    * coding
      * code = #PNH
      * system = $NZCentralRegionHospitalCS
      * display = "Palmerston North Hospital"

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="
