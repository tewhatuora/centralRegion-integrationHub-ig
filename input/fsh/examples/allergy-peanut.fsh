// Example Instances of Patient with different address fields
Instance: PeanutAllergy
InstanceOf: NZCentralRegionAllergyIntolerance
Description: "An example of an allergy/intolerance alert derived from ZAL custom segment, in Te Whatu Ora Central Region"

* identifier
  * use = #usual
  * system = $NZCentralRegionLocalAlertId
  * value = "WYS1973-food-PEANUT"

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
    * code = #PEANUT
    * system  = $NZCentralRegionAllergyAlertCodeH3CS
    * display = "Allergy to Peanuts"

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
  * extension[severityLevel].valueInteger = 5   // but should be 'S'  !!!
  * extension[allergyReaction].valueString = "Swelling and Rash"
  * extension[reviewDate].valueDate = "2020-10-20"
  * extension[lastUpdatedBy].valueString = "melissab - Melissa Brosnan MDHB"
  * extension[lastUpdatedDateTime].valueDateTime = "2020-08-26T14:23:57+12:00"
  * extension[recordingHospital].valueCoding
    * code = #PNH
    * system = $NZCentralRegionHospitalCS
    * display = "Palmerston North Hospital"

* extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="
