// Example Instance of Referral flavour of ServiceRequest
Instance: Referral
InstanceOf: NZCentralRegionReferral
Description: "An example of a Referral flavour of ServiceRequest resource, in Te Whatu Ora Central Region"
Usage:  #example

* identifier
  * use = #usual
  * system = $NZCentralRegionReferralId
  * value = "43372609"
  * type.coding
    * code = #FILL
    * system = $HL7IdentifierTypeCS
    * display = "Filler Identifier"

* status = #draft
* intent = #order

* code.coding
  * code = #GAS
  * system = $NZCentralRegionReferralTypeWUCS
  * display = "Gastroenterology"

* priority = #routine

* reasonCode.coding
  * code = #GASTRO
  * system = $NZCentralRegionReferralReasonCS
  * display = "Gastroscopy"
  
* locationCode.coding
  * code = #MGA
  * system = $NZCentralRegionDepartmentCS
  * display = "MC Gastroenterology"

* authoredOn = "2022-02-10"

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
    * value = "ABC1234"

* requester
  * type = #Practitioner
  * identifier
    * use = #usual
    * type
      * coding
        * code = #LR
        * system = $HL7IdentifierTypeCS
        * display = "Local Registry ID"
    * system = $NZCentralRegionPASPractitioner
    * value = "25339"

* performer
  * type = #Practitioner
  * identifier
    * use = #usual
    * type
      * coding
        * code = #LR
        * system = $HL7IdentifierTypeCS
        * display = "Local Registry ID"
    * system = $NZCentralRegionPASPractitioner
    * value = "80791"

* extension[referral]
  * extension[consultingPractitioner].valueReference
    * type = #Practitioner
    * identifier
      * use = #usual
      * type
        * coding
          * code = #LR
          * system = $HL7IdentifierTypeCS
          * display = "Local Registry ID"
      * system = $NZCentralRegionPASPractitioner
      * value = "99233"

  * extension[preferredSite].valueCoding
    * code = #POPD
    * system = $NZCentralRegionReferralSiteCS
    * display = "Palmerston North Outpatients"

  * extension[referralSource].valueCoding
    * code = #R08
    * system = $NZCentralRegionReferralSourceCS
    * display = "General Practitioner"

  * extension[referringPractice].valueReference
    * type = "Organization"
    * identifier
      * use = #usual
      * system = $NZCentralRegionPASPractice
      * value = #16478
      * type.coding
        * code = #LR
        * system = $HL7IdentifierTypeCS
        * display = "Local Registry ID"

  * extension[healthPurchaser].valueCoding
    * code = #35M
    * system = $NZCentralRegionHealthPurchaserCS
    * display = "MDHB Funded"

  * extension[clinicType].valueCoding
    * code = #MDT
    * system = $NZCentralRegionClinicTypeCS
    * display = "MC Dietetics"

  * extension[clinicId].valueString = "MDTAXDW"
  * extension[healthSpeciality].valueString = "ORD"
  * extension[financialClass].valueString = "17"

  * extension[lastUpdated].valueDateTime = "2022-02-10T12:55:27+12:00"

  * extension[informGP].valueBoolean = false

  * extension[webPASPriority].valueCoding
    * code = #URG
    * system = $NZCentralRegionReferralPriorityCS
    * display = "2 Urgent"

  * extension[webPASStatus].valueCoding
    * code = #P
    * system = $NZCentralRegionReferralStatusCS
    * display = "Pending"

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="
