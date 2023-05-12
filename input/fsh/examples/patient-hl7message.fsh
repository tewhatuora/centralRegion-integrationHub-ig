// Example Instances of Patient
Instance: Patient-HL7Message
InstanceOf: NZCentralRegionPatient
Description: """An example of a patient from Te Whatu Ora, Central Region, including the source HL7 v2 message, which when `base64decoded` looks like this:

MSH|^~\&|PROD_WebPAS^RPAS|MCDHB^G00033|Regional HUB^RHUB|RHIP^G09999|20220316091410000+1300||ADT^A31|341P0000000000462041|P|2.4
EVN||20220316091358
PID|||ZHY4846^^^&2.16.840.1.113883.2.18.2||Pond^James^^^FR||19720223000000|M||21^NZ Maori^NZHIS|100 Broadway Avenue^^Palmerston North^^4410^NEW ZEALAND^C~^^^^^NEW ZEALAND^M|1845|^PRN^PH~02758880032^ORN^CP|^WPN^PH|ENG^English^NHDD-132^U|V^Civil Union^HL70002||||||21^NZ Maori^NZHIS~11^NZ European / Pakeha^NZHIS~32^Cook Island Maori^NZHIS||||Y||NZ^New Zealand citizen^RHIP_Resident_Status||N
PD1|||Feilding Health Care^^12482^^^&2.16.840.1.113883.2.18.66.3.3.0|66665^Rerekura^Amber-Lea Aroha^^^Dr^^^&2.16.840.1.113883.2.18.66.3.2.0
NK1|1|Lake^Elaine^^^Mrs|03^Sister^webPAS||^PRN^PH~027 8887743^ORN^CP|^WPN^PH
NK1|2|Pond^Gwenyth^^^Mrs|01^Mother^webPAS||^PRN^PH~027 5 666 325^ORN^CP|^WPN^PH
NK1|3|Moneypenny^Louise^^^Miss|18^De Facto^webPAS||^PRN^PH~021 555 888 6^ORN^CP|^WPN^PH"""

* name
  * use = #official
  * given[0] = "James"
  * family = "Pond"
  * text = "James Pond" 
* birthDate = "1972-03-23"
* gender = #male

* identifier
  * type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * type.coding.code = #MR
  * type.coding.display = "Medical record number"
  * use = #official
  * system = "https://standards.digital.health.nz/ns/nhi-id"
  * value = "ZHY4846"

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
* maritalStatus.coding[=].system = Canonical(nzcr-extra-marital-status-code-system)
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
* generalPractitioner.reference = "Practitioner/61cee2d0-7f24-4573-be25-bd6c6d8d5522"
* generalPractitioner.identifier.use = #usual
* generalPractitioner.identifier.system = "https://standards.digital.health.nz/ns/pas-practitioner-id"
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

* extension[hl7v2Message].valueBase64Binary="TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="