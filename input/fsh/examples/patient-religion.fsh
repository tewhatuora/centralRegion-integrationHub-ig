// Example Instances of Patient
Instance: Religion-Presbyterian
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with religious affiliation requiring two codings:
 * The raw coding from WebPAS with coding from https://standards.digital.health.nz/ns/central-region/patient-religion
 * Equivalent coding from http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation"

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

* birthDate = "1966-01-05"
* gender = #male

* maritalStatus.coding[+].code = #V
* maritalStatus.coding[=].system = Canonical(nzcr-extra-marital-status-cs)
* maritalStatus.coding[=].display = "Civil Union"

* telecom[+].system = #phone
* telecom[=].value = "021 555 888 6"
* telecom[=].use = #home

* address[+].type = #postal
* address[=].line[+] = "100 Cambridge Street"
* address[=].extension[suburb].valueString = "Kelvin Grove"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4410"
* address[=].country = "NEW ZEALAND"
* address[=].text = "100 Cambridge Street Kelvin Grove Palmerston North 4410 NEW ZEALAND"

* extension[interpreterRequired].valueBoolean = false
* communication.language.coding.code = #en
* communication.language.coding.system = "urn:ietf:bcp:47"
* communication.language.coding.display = "English"
* communication.preferred = true

* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code = #yes
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system = $NZBaseNZCitizenshipCS
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display = "Yes"

* extension[nzResidency].extension[status].valueCodeableConcept.coding[+].code = #no
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].system = $NZBaseNZResidencyCS
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].display = "Not a Permanent Resident"

* extension[patient-religion].valueCodeableConcept.coding[+].code = #1076
* extension[patient-religion].valueCodeableConcept.coding[=].system = $HL7PatientRelgionCS
* extension[patient-religion].valueCodeableConcept.coding[=].display = "Presbyterian"
* extension[patient-religion].valueCodeableConcept.coding[+].code = #R33
* extension[patient-religion].valueCodeableConcept.coding[=].system = $NZCentralRegionReligionCS
* extension[patient-religion].valueCodeableConcept.coding[=].display = "Presbyterian"

* deceasedBoolean = false


Instance: Religion-NoAnswer
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with religious affiliation 'Objects to question'
  Which means there is no equivalent coding from http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation"

* identifier
  * use = #official
  * system = $NZBaseNHI
  * value = "ZKY0099"
  * type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * type.coding.code = #MR
  * type.coding.display = "Medical record number"

* name
  * use = #official
  * given[0] = "James"
  * family = "Pond"
  * text = "James Pond" 

* birthDate = "1966-01-05"
* gender = #male

* maritalStatus.coding[+].code = #V
* maritalStatus.coding[=].system = Canonical(nzcr-extra-marital-status-cs)
* maritalStatus.coding[=].display = "Civil Union"

* telecom[+].system = #phone
* telecom[=].value = "021 555 888 6"
* telecom[=].use = #home

* address[+].type = #postal
* address[=].line[+] = "100 Cambridge Street"
* address[=].extension[suburb].valueString = "Kelvin Grove"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4410"
* address[=].country = "NEW ZEALAND"
* address[=].text = "100 Cambridge Street Kelvin Grove Palmerston North 4410 NEW ZEALAND"

* extension[interpreterRequired].valueBoolean = false
* communication.language.coding.code = #en
* communication.language.coding.system = "urn:ietf:bcp:47"
* communication.language.coding.display = "English"
* communication.preferred = true

* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code = #yes
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system = $NZBaseNZCitizenshipCS
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display = "Yes"

* extension[nzResidency].extension[status].valueCodeableConcept.coding[+].code = #no
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].system = $NZBaseNZResidencyCS
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].display = "Not a Permanent Resident"

* extension[patient-religion].valueCodeableConcept.coding[+].code = #R27
* extension[patient-religion].valueCodeableConcept.coding[=].system = $NZCentralRegionReligionCS
* extension[patient-religion].valueCodeableConcept.coding[=].display = "Objects to question"

* deceasedBoolean = false

* extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="
