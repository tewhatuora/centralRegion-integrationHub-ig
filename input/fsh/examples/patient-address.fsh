// Example Instances of Patient with different address fields
Instance: Patient-Suburb
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with address containing suburb field"

* name
  * use = #official
  * given[0] = "James"
  * family = "Pond"
  * text = "James Pond" 
* birthDate = "1966-01-05"
* gender = #male

* maritalStatus.coding[+].code = #V
* maritalStatus.coding[=].system = Canonical(nzcr-extra-marital-status-code-system)
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

/*
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code = #yes
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system = $NZBaseNZCitizenshipVS
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display = "Yes"

* extension[nzResidency].extension[status].valueCodeableConcept.coding.code = #no
* extension[nzResidency].extension[status].valueCodeableConcept.coding.system = $NZBaseNZResidencyVS
* extension[nzResidency].extension[status].valueCodeableConcept.coding.display = "No"
*/

* deceasedBoolean = false

