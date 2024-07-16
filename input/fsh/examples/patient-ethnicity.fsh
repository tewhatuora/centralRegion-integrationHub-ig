// Example Instances of Patient including ethnicity
Instance: Ethnicity-MultipleCodings-Slicing
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with multiple ethnicity codings included, using nzcrEthnicity extension"
Usage:  #example

* identifier
  * use = #official
  * system = $NZBaseNHI
  * value = "ZKY0099"
  * type.coding.system = $HL7IdentifierTypeCS
  * type.coding.code = #MR
  * type.coding.display = "Medical record number"

* name
  * use = #usual
  * given[0] = "James"
  * family = "Pond"
  * text = "James Pond"

* birthDate = "1966-01-05"
* gender = #male

* extension[nzcrEthnicity][+].valueCodeableConcept.coding[level4]
  * code = #21111
  * display = "Māori"
  //* system = $NZStatsEthnicityLevel4CS
* extension[nzcrEthnicity][=].valueCodeableConcept.coding[level2]
  * code = #21
  * display = "NZ Māori"
  //* system = $NZStatsEthnicityLevel2CS


* maritalStatus.coding[+].code = #S
* maritalStatus.coding[=].system = $HL7MaritalStatusCS
* maritalStatus.coding[=].display = "Never Married"

* telecom[+].system = #phone
* telecom[=].value = "021 555 888 6"
* telecom[=].use = #home

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

* deceasedBoolean = false

* meta.extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="



Instance: Ethnicity-MultipleCodings-AdditionalBindings
InstanceOf: NZCentralRegionPatientAdditionalBinding
Description: "An example of a patient from Te Whatu Ora, Central Region, with multiple ethnicity codings included, using additionalBindings on nzEthnicity"
Usage:  #example

* identifier
  * use = #official
  * system = $NZBaseNHI
  * value = "ZKY0099"
  * type.coding.system = $HL7IdentifierTypeCS
  * type.coding.code = #MR
  * type.coding.display = "Medical record number"

* name
  * use = #usual
  * given[0] = "James"
  * family = "Pond"
  * text = "James Pond"

* birthDate = "1966-01-05"
* gender = #male

* extension[ethnicity][+].valueCodeableConcept.coding[+]
  * code = #21111
  * display = "Māori"
  * system = $NZStatsEthnicityLevel4CS
* extension[ethnicity][=].valueCodeableConcept.coding[+]
  * code = #21
  * display = "NZ Māori"
  * system = $NZStatsEthnicityLevel2CS


* maritalStatus.coding[+].code = #S
* maritalStatus.coding[=].system = $HL7MaritalStatusCS
* maritalStatus.coding[=].display = "Never Married"

* telecom[+].system = #phone
* telecom[=].value = "021 555 888 6"
* telecom[=].use = #home

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

* extension[nz-residency].extension[status].valueCodeableConcept.coding[+]
  * code = #unknown
  * display = "Unknown"
  * system = $NZBaseNZResidencyCS
* extension[nz-residency].extension[status].valueCodeableConcept.coding[+]
  * code = #DET
  * display = "Details required"
  * system = $NZCentralRegionResidencyCS

* deceasedBoolean = false

* meta.extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="
