// Example Instances of Patient with different address fields
Instance: Patient-LanguageSingle
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with a single language of communication"

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

* deceasedBoolean = false

* extension[hl7v2Message].valueBase64Binary="TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="


// Example Instances of Patient with different address fields
Instance: Patient-LanguageList
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with an impossibly large set of languages; lets see that we can validate all of them"

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
* communication[+].language.coding[+].code = #en
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "English"
* communication[=].preferred = true

* communication[+].language.coding[+].code = #mi
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Māori"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #mi-CK
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Cook Island Māori"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #rar
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Cook Island Māori"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #tkl
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Tokelau"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #niu
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Niuean"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #tvl
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Tuvalu"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #sm
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Samoan"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #to
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Tongan"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #fj
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Fijian"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #zh
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Chinese"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #cmn
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Mandarin"
* communication[=].preferred = false

* communication[+].language.coding[+].code = #yue
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = "Cantonese"
* communication[=].preferred = false

* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code = #yes
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system = $NZBaseNZCitizenshipCS
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display = "Yes"

* extension[nzResidency].extension[status].valueCodeableConcept.coding[+].code = #no
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].system = $NZBaseNZResidencyCS
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].display = "Not a Permanent Resident"

* deceasedBoolean = false

* extension[hl7v2Message].valueBase64Binary="TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="