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
  * coding[fhirOrig]
    * code = #H2
    * display = "Medical condition alerts"
    // * system = $NZCentralRegionAlertCategoryCS
  * coding[rawSource]
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

* meta.extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="
