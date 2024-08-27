// Example Instances of Patient
Instance: GeneralPractitioner
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with General Practitioner element"
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

* deceasedBoolean = false

* meta.extension[hl7v2Message].valueBase64Binary = "QmFzZTY0IEp1bms="
