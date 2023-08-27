Instance: LanguageSingle
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with a single language of communication"

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
* communication.language.coding[+].code = #ENG
* communication.language.coding[=].system = $NZCentralRegionRawLanguageCS
* communication.language.coding[=].display = "English"
* communication.language.coding[+].code = #en
* communication.language.coding[=].system = $IETFLanguageCS
* communication.language.coding[=].display = "English"
* communication.preferred = true

* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code = #yes
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system = $NZBaseNZCitizenshipCS
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display = "Yes"

* extension[nzResidency].extension[status].valueCodeableConcept.coding[+].code = #no
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].system = $NZBaseNZResidencyCS
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].display = "Not a Permanent Resident"

* deceasedBoolean = false

* extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="


RuleSet: patientLanguage(code, display)
* communication[+].language.coding[+].code = #{code}
* communication[=].language.coding[=].system = "urn:ietf:bcp:47"
* communication[=].language.coding[=].display = {display}
* communication[=].preferred = false

Instance: LanguageList
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with an impossibly large set of languages; lets see that we can validate all of them"

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
* insert patientLanguage(ace,   "Achinese")
* insert patientLanguage(ach,   "Acoli")
* insert patientLanguage(af,    "Afrikaans")
* insert patientLanguage(apc,   "North Levantine Arabic")
* insert patientLanguage(ayp,   "North Mesopotamian Arabic")
* insert patientLanguage(am,    "Amharic")
* insert patientLanguage(ar,    "Arabic")
* insert patientLanguage(ase,   "American Sign Language")
* insert patientLanguage(bn,    "Bengali")
* insert patientLanguage(bg,    "Bulgarian")
* insert patientLanguage(cdo,   "Min Dong Chinese")
* insert patientLanguage(cs,    "Czech")
* insert patientLanguage(cmn,   "Mandarin Chinese")
* insert patientLanguage(da,    "Danish")
* insert patientLanguage(din,   "Dinka")
* insert patientLanguage(nl,    "Dutch")
* insert patientLanguage(dz,    "Dzongkha")
* insert patientLanguage(en,    "English")
* insert patientLanguage(fa,    "Persian")
* insert patientLanguage(fj,    "Fijian")
* insert patientLanguage(fil,   "Filipino")
* insert patientLanguage(fi,    "Finnish")
* insert patientLanguage(fr,    "French")
* insert patientLanguage(de,    "German")
* insert patientLanguage(el,    "Modern Greek (1453-\)")
* insert patientLanguage(gu,    "Gujarati")
* insert patientLanguage(hak,   "Hakka Chinese")
* insert patientLanguage(he,    "Hebrew")
* insert patientLanguage(hif,   "Fiji Hindi")
* insert patientLanguage(hi,    "Hindi")
* insert patientLanguage(hlt,   "Matu Chin")
* insert patientLanguage(hr,    "Croatian")
* insert patientLanguage(hu,    "Hungarian")
* insert patientLanguage(ils,   "International Sign")
* insert patientLanguage(id,    "Indonesian")
* insert patientLanguage(it,    "Italian")
* insert patientLanguage(ja,    "Japanese")
* insert patientLanguage(km,    "Central Khmer")
* insert patientLanguage(rw,    "Kinyarwanda")
* insert patientLanguage(kmr,   "Northern Kurdish")
* insert patientLanguage(ko,    "Korean")
* insert patientLanguage(ku,    "Kurdish")
* insert patientLanguage(lo,    "Lao")
* insert patientLanguage(mi,    "Māori")
* insert patientLanguage(ms,    "Malay (macrolanguage\)")
* insert patientLanguage(my,    "Burmese")
* insert patientLanguage(nan,   "Min nan chinese")
* insert patientLanguage(ne,    "Nepali (macrolanguage\)")
* insert patientLanguage(niu,   "Niuean")
* insert patientLanguage(no,    "Norwegian")
* insert patientLanguage(nzs,   "New Zealand Sign Language")
* insert patientLanguage(om,    "Oromo")
* insert patientLanguage(pa,    "Panjabi")
* insert patientLanguage(pl,    "Polish")
* insert patientLanguage(pt,    "Portuguese")
* insert patientLanguage(prs,   "Dari")
* insert patientLanguage(rar,   "Cook Island Māori")
* insert patientLanguage(rhg,   "Rohingya")
* insert patientLanguage(rn,    "Rundi")
* insert patientLanguage(ru,    "Russian")
* insert patientLanguage(sm,    "Samoan")
* insert patientLanguage(si,    "Sinhala")
* insert patientLanguage(sk,    "Slovak")
* insert patientLanguage(so,    "Somali")
* insert patientLanguage(es,    "Spanish")
* insert patientLanguage(sr,    "Serbian")
* insert patientLanguage(sw,    "Swahili (macrolanguage\)")
* insert patientLanguage(sv,    "Swedish")
* insert patientLanguage(ta,    "Tamil")
* insert patientLanguage(th,    "Thai")
* insert patientLanguage(ti,    "Tigrinya")
* insert patientLanguage(tkl,   "Tokelau")
* insert patientLanguage(to,    "Tonga (Tonga Islands\)")
* insert patientLanguage(tr,    "Turkish")
* insert patientLanguage(tvl,   "Tuvalu")
* insert patientLanguage(uk,    "Ukrainian")
* insert patientLanguage(ur,    "Urdu")
* insert patientLanguage(vi,    "Vietnamese")
* insert patientLanguage(yue,   "Yue Chinese")
* insert patientLanguage(zh,    "Chinese")

// the proposed TWS value
* communication[+].language.coding[+].code = #tws
* communication[=].language.coding[=].system = $NZCentralRegionProposedLanguageCS
* communication[=].language.coding[=].display = "Teochew"
* communication[=].preferred = false

// ... and the orphan OTH value
* communication[+].language.coding[+].code = #OTH
* communication[=].language.coding[=].system = $HL7NullFlavourCS
* communication[=].language.coding[=].display = "Other"
* communication[=].preferred = false

* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code = #yes
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system = $NZBaseNZCitizenshipCS
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display = "Yes"

* extension[nzResidency].extension[status].valueCodeableConcept.coding[+].code = #no
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].system = $NZBaseNZResidencyCS
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].display = "Not a Permanent Resident"

* deceasedBoolean = false

* extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMTYwOTE0MTAwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MjA0MXxQfDIuNApFVk58fDIwMjIwMzE2MDkxMzU4ClBJRHx8fFpIWTQ4NDZeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC4yfHxQb25kXkphbWVzXl5eRlJ8fDE5NzIwMjIzMDAwMDAwfE18fDIxXk5aIE1hb3JpXk5aSElTfDEwMCBCcm9hZHdheSBBdmVudWVeXlBhbG1lcnN0b24gTm9ydGheXjQ0MTBeTkVXIFpFQUxBTkReQ35eXl5eXk5FVyBaRUFMQU5EXk18MTg0NXxeUFJOXlBIfjAyNzU4ODgwMDMyXk9STl5DUHxeV1BOXlBIfEVOR15FbmdsaXNoXk5IREQtMTMyXlV8Vl5DaXZpbCBVbmlvbl5ITDcwMDAyfHx8fHx8MjFeTlogTWFvcmleTlpISVN+MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN+MzJeQ29vayBJc2xhbmQgTWFvcmleTlpISVN8fHx8WXx8TlpeTmV3IFplYWxhbmQgY2l0aXplbl5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxGZWlsZGluZyBIZWFsdGggQ2FyZV5eMTI0ODJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHw2NjY2NV5SZXJla3VyYV5BbWJlci1MZWEgQXJvaGFeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wCk5LMXwxfExha2VeRWxhaW5lXl5eTXJzfDAzXlNpc3Rlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDg4ODc3NDNeT1JOXkNQfF5XUE5eUEgKTksxfDJ8UG9uZF5Hd2VueXRoXl5eTXJzfDAxXk1vdGhlcl53ZWJQQVN8fF5QUk5eUEh+MDI3IDUgNjY2IDMyNV5PUk5eQ1B8XldQTl5QSApOSzF8M3xNb25leXBlbm55XkxvdWlzZV5eXk1pc3N8MTheRGUgRmFjdG9ed2ViUEFTfHxeUFJOXlBIfjAyMSA1NTUgODg4IDZeT1JOXkNQfF5XUE5eUEg="
