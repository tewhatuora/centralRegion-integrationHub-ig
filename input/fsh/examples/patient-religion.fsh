// Example Instances of Patient Religion settings
Instance: Religion-Presbyterian-Slicing
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with religious affiliation requiring two codings:
 * The raw coding from WebPAS with coding from https://standards.digital.health.nz/ns/central-region/patient-religion
 * Equivalent coding from http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation"
Usage:  #example

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

// SmileCDR is broken and can't let us put the original coding in along-side the FHIR defined set
// * maritalStatus.coding[+].code = #V
// * maritalStatus.coding[=].system = Canonical(nzcr-raw-marital-status-cs)
// * maritalStatus.coding[=].display = "Civil Union"
* maritalStatus.coding[+].code = #OTH
* maritalStatus.coding[=].system = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* maritalStatus.coding[=].display = "other"

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
* extension[nzcrResidency].extension[status].valueCodeableConcept.coding[rawSource]
  * code = #DET
  * display = "Details required"

* extension[nzcrReligion].valueCodeableConcept.coding[origFhir]
  * code = #1076
  * display = "Presbyterian"
* extension[nzcrReligion].valueCodeableConcept.coding[rawSource]
  * code = #R33
  * display = "Presbyterian"

* deceasedBoolean = false

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="



Instance: Religion-NoAnswer-Slicing
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

// SmileCDR is broken and can't let us put the original coding in along-side the FHIR defined set
// * maritalStatus.coding[+].code = #V
// * maritalStatus.coding[=].system = Canonical(nzcr-raw-marital-status-cs)
// * maritalStatus.coding[=].display = "Civil Union"
* maritalStatus.coding[+].code = #OTH
* maritalStatus.coding[=].system = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* maritalStatus.coding[=].display = "other"

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
* extension[nzcrResidency].extension[status].valueCodeableConcept.coding[rawSource]
  * code = #DET
  * display = "Details required"

// Only one coding, for no-answer
* extension[nzcrReligion].valueCodeableConcept.coding[rawSource]
  * code = #R27
  * display = "Objects to question"

* deceasedBoolean = false

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="





Instance: Religion-Presbyterian-AdditionalBindings
InstanceOf: NZCentralRegionPatientAdditionalBinding
Description: "An example of a patient from Te Whatu Ora, Central Region, with religious affiliation requiring two codings:
 * The raw coding from WebPAS with coding from https://standards.digital.health.nz/ns/central-region/patient-religion
 * Equivalent coding from http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation"
Usage:  #example

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

// SmileCDR is broken and can't let us put the original coding in along-side the FHIR defined set
// * maritalStatus.coding[+].code = #V
// * maritalStatus.coding[=].system = Canonical(nzcr-raw-marital-status-cs)
// * maritalStatus.coding[=].display = "Civil Union"
* maritalStatus.coding[+].code = #OTH
* maritalStatus.coding[=].system = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* maritalStatus.coding[=].display = "other"


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

// SmileCDR is broken and can't let us put the original coding in along-side the FHIR defined set
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

* extension[patient-religion].valueCodeableConcept.coding[+]
  * code = #1076
  * display = "Presbyterian"
  * system = $HL7PatientRelgionCS
* extension[patient-religion].valueCodeableConcept.coding[+]
  * code = #R33
  * display = "Presbyterian"
  * system = $NZCentralRegionReligionCS 

* deceasedBoolean = false

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="

Instance: Religion-NoAnswer-AdditionalBindings
InstanceOf: NZCentralRegionPatientAdditionalBinding
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

// SmileCDR is broken and can't let us put the original coding in along-side the FHIR defined set
// * maritalStatus.coding[+].code = #V
// * maritalStatus.coding[=].system = Canonical(nzcr-raw-marital-status-cs)
// * maritalStatus.coding[=].display = "Civil Union"
* maritalStatus.coding[+].code = #OTH
* maritalStatus.coding[=].system = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* maritalStatus.coding[=].display = "other"

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

// SmileCDR is broken and can't let us put the original coding in along-side the FHIR defined set
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

// FHIR code system doesn't have an equivalent to "Objects to question" so only one coding
* extension[patient-religion].valueCodeableConcept
  * coding[+]
    * code = #R27
    * display = "Objects to question"
    * system = $NZCentralRegionReligionCS

* deceasedBoolean = false

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="
