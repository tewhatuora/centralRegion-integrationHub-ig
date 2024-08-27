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

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="



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

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="
