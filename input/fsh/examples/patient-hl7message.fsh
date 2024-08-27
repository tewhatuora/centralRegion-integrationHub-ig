// Example Instances of Patient
Instance: HL7Message
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, including the source HL7 v2 message and l4h processing meta data"
Usage:  #example

* meta
  * extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="
  * extension[nzcr-l4hmeta-timestamp].valueDateTime = "2024-08-04T23:49:01Z"
  * extension[nzcr-l4hmeta-source-event-trigger]
    * valueCodeableConcept
      * coding[+]
        * system = "http://terminology.hl7.org/CodeSystem/v2-0003"
        * code = #I13
  * extension[nzcr-l4hmeta-source-record-type]
    * valueCodeableConcept
      * coding[+]
        * system = "http://terminology.hl7.org/CodeSystem/v2-0076"
        * code = #REF
  * extension[nzcr-l4hmeta-source-record-id].valueString = "341P0000000000521916"
  * extension[nzcr-l4hmeta-source-data-model-version].valueString = "2.4"
  * extension[nzcr-l4hmeta-process-client-id].valueString = "DIT1_WebPAS"
  * extension[nzcr-l4hmeta-template-version].valueString = "1.0.8-rc4-SNAPSHOT"

* identifier
  * use = #official
  * system = $NZBaseNHI
  * value = "ZKY0099"
  * type.coding.system = $HL7IdentifierTypeCS
  * type.coding.code = #MR
  * type.coding.display = "Medical record number"

* name
  * use = #official
  * given[0] = "James"
  * family = "Pond"
  * text = "James Pond" 

* birthDate = "1972-03-23"
* gender = #male

* extension[nzcrEthnicity][+].valueCodeableConcept.coding[level4]
  * code = #21111
  * display = "Māori"
  //* system = $NZStatsEthnicityLevel4CS
* extension[nzcrEthnicity][=].valueCodeableConcept.coding[level2]
  * code = #21
  * display = "NZ Māori"
  //* system = $NZStatsEthnicityLevel2CS

* address[+].type = #postal
* address[=].line[+] = "100 Broadway Avenue"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4410"
* address[=].country = "NEW ZEALAND"
* address[=].use = #home

* telecom[+].system = #phone
* telecom[=].value = "02758880032"
* telecom[=].use = #home

// SmileCDR is broken and can't let us put the original coding in along-side the FHIR defined set
// * maritalStatus.coding[+].code = #V
// * maritalStatus.coding[=].system = Canonical(nzcr-raw-marital-status-cs)
// * maritalStatus.coding[=].display = "Civil Union"
* maritalStatus.coding[+].code = #OTH
* maritalStatus.coding[=].system = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* maritalStatus.coding[=].display = "other"

* address[+].type = #postal
* address[=].line[+] = "100 Cambridge Street"
* address[=].extension[suburb].valueString = "Kelvin Grove"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4410"
* address[=].country = "NEW ZEALAND"
* address[=].use = #home

* extension[interpreterRequired].valueBoolean = false
* communication.language.coding[+]
  * code = #en
  * display = "English"
  * system = "urn:ietf:bcp:47"
//* communication.language.coding[+]
//  * code = #ENG
//  * display = "English"
//  * system = $NZCentralRegionRawLanguageCS
* communication.preferred = true

* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code = #yes
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system = $NZBaseNZCitizenshipCS
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display = "Yes"

* extension[nzcrResidency].extension[status].valueCodeableConcept.coding[nzBase]
  * code = #unknown
  * display = "Unknown"
  //* system = $NZBaseNZResidencyCS
* extension[nzcrResidency].extension[status].valueCodeableConcept.coding[rawSource]
  * code = #DET
  * display = "Details required"
  //* system = $NZCentralRegionResidencyCS

* generalPractitioner.type = #Practitioner
* generalPractitioner.identifier.use = #usual
* generalPractitioner.identifier.type.coding.code = #LR
* generalPractitioner.identifier.type.coding.system = $HL7IdentifierTypeCS
* generalPractitioner.identifier.type.coding.display = "Local Registry ID"
* generalPractitioner.identifier.system = $NZCentralRegionPASPractitioner
* generalPractitioner.identifier.value = "666665"
* generalPractitioner.display = "Dr Amber-Lea Aroha"

* contact[+]
  * relationship.coding[+]
    * code = #C
    * display = "Emergency Contact" 
    * system = "http://terminology.hl7.org/CodeSystem/v2-0131"
  //* relationship.coding[rawSource]
    //* code = #3
    //* display = "Sister"
    //* system = "https://standards.digital.health.nz/ns/central-region/contact-relationship"

  * name.family = "Lake"
  * name.given = "Elaine"
  * name.prefix = "Mrs"
  * name.text = "Mrs Elaine Lake"
  * telecom[+].value = "027 8887743"
  * telecom[=].system = #phone
  * telecom[=].use = #home

* contact[+]
  * relationship.coding[+]
    * code = #C
    * display = "Emergency Contact" 
    * system = "http://terminology.hl7.org/CodeSystem/v2-0131"
  //* relationship.coding[rawSource]
    //* code = #1
    //* display = "Mother"
    //* system = "https://standards.digital.health.nz/ns/central-region/contact-relationship"
  * name
    * family = "Pond"
    * given = "Gwenyth"
    * prefix = "Mrs"
    * text = "Mrs Gwenyth Pond"
  * telecom[+]
    * value = "027 5 666 325"
    * system = #phone
    * use = #home

* contact[+]
  * relationship.coding[+]
    * code = #N
    * display = "Next-of-Kin"
    * system = "http://terminology.hl7.org/CodeSystem/v2-0131"
  //* relationship.coding[rawSource]
    //* code = #18
    //* display = "De facto"
    //* system = "https://standards.digital.health.nz/ns/central-region/contact-relationship"
  * name
    * family = "Moneypenny"
    * given = "Louise"
    * prefix = "Miss"
    * text = "Miss Louise Moneypenny"
  * telecom[+]
    * value = "021 555 888 6"
    * system = #phone
    * use = #home

* deceasedBoolean = false
