// Example Instances of Patient
Instance: HL7Message
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, including the source HL7 v2 message"

* extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="

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

* extension[ethnicity][+].valueCodeableConcept.coding[+].code = #21
* extension[ethnicity][=].valueCodeableConcept.coding[=].system = $NZStatsEthnicityLevel2CS
* extension[ethnicity][=].valueCodeableConcept.coding[=].display = "Māori"
* extension[ethnicity][+].valueCodeableConcept.coding[+].code = #11
* extension[ethnicity][=].valueCodeableConcept.coding[=].system = $NZStatsEthnicityLevel2CS
* extension[ethnicity][=].valueCodeableConcept.coding[=].display = "NZ European"
* extension[ethnicity][+].valueCodeableConcept.coding[+].code = #32
* extension[ethnicity][=].valueCodeableConcept.coding[=].system = $NZStatsEthnicityLevel2CS
* extension[ethnicity][=].valueCodeableConcept.coding[=].display = "Cook Island Māori"

* address[+].type = #postal
* address[=].line[+] = "100 Broadway Avenue"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4410"
* address[=].country = "NEW ZEALAND"
* address[=].text = "100 Broadway Avenue Palmerston North 4410 NEW ZEALAND"

* telecom[+].system = #phone
* telecom[=].value = "02758880032"
* telecom[=].use = #home

* maritalStatus.coding[+].code = #V
* maritalStatus.coding[=].system = Canonical(nzcr-extra-marital-status-cs)
* maritalStatus.coding[=].display = "Civil Union"

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

* generalPractitioner.type = #Practitioner
* generalPractitioner.identifier.use = #usual
* generalPractitioner.identifier.type.coding.code = #LR
* generalPractitioner.identifier.type.coding.system = $HL7IdentifierTypeCS
* generalPractitioner.identifier.type.coding.display = "Local Registry ID"
* generalPractitioner.identifier.system = $NZCentralRegionPASPractitioner
* generalPractitioner.identifier.value = "666665"
* generalPractitioner.display = "Dr Amber-Lea Aroha"

* contact[+].relationship.coding[+].system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[=].relationship.coding[=].code = #O
* contact[=].relationship.coding[=].display = "Other"
* contact[=].relationship.coding[+].system = "https://standards.digital.health.nz/ns/central-region/contact-relationship"
* contact[=].relationship.coding[=].code = #3
* contact[=].relationship.coding[=].display = "Sister"
* contact[=].name.family = "Lake"
* contact[=].name.given = "Elaine"
* contact[=].name.prefix = "Mrs"
* contact[=].name.text = "Mrs Elaine Lake"
* contact[=].telecom[+].value = "027 8887743"
* contact[=].telecom[=].system = #phone
* contact[=].telecom[=].use = #home

* contact[+].relationship.coding[+].system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[=].relationship.coding[=].code = #O
* contact[=].relationship.coding[=].display = "Other"
* contact[=].relationship.coding[+].system = "https://standards.digital.health.nz/ns/central-region/contact-relationship"
* contact[=].relationship.coding[=].code = #1
* contact[=].relationship.coding[=].display = "Mother"
* contact[=].name.family = "Pond"
* contact[=].name.given = "Gwenyth"
* contact[=].name.prefix = "Mrs"
* contact[=].name.text = "Mrs Gwenyth Pond"
* contact[=].telecom[+].value = "027 5 666 325"
* contact[=].telecom[=].system = #phone
* contact[=].telecom[=].use = #home

* contact[+].relationship.coding[+].system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[=].relationship.coding[=].code = #N
* contact[=].relationship.coding[=].display = "Next-of-Kin"
* contact[=].relationship.coding[+].system = "https://standards.digital.health.nz/ns/central-region/contact-relationship"
* contact[=].relationship.coding[=].code = #18
* contact[=].relationship.coding[=].display = "De facto"
* contact[=].name.family = "Moneypenny"
* contact[=].name.given = "Louise"
* contact[=].name.prefix = "Miss"
* contact[=].name.text = "Miss Louise Moneypenny"
* contact[=].telecom[+].value = "021 555 888 6"
* contact[=].telecom[=].system = #phone
* contact[=].telecom[=].use = #home

* deceasedBoolean = false
