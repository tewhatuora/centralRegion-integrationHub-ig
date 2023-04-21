// Example Instances of Patient including ethnicity
Instance: Patient-Ethnicity-MultipleCodings
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with multiple ethnicity codings included"
* name
  * use = #usual
  * given[0] = "James"
  * family = "Pond"
  * text = "James Pond"
* birthDate = "1966-01-05"
* gender = #male

* extension[ethnicity][+].valueCodeableConcept.coding[+].code = #21111
* extension[ethnicity][=].valueCodeableConcept.coding[=].system = $NZStatsEthnicityLevel4
* extension[ethnicity][=].valueCodeableConcept.coding[=].display = "Māori"
* extension[ethnicity][=].valueCodeableConcept.coding[+].code = #21
* extension[ethnicity][=].valueCodeableConcept.coding[=].system = $NZStatsEthnicityLevel2
* extension[ethnicity][=].valueCodeableConcept.coding[=].display = "Māori"


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
* address[=].text = "100 Cambridge Street Kelvin Grove Palmerston North 4410 NEW ZEALAND"

* deceasedBoolean = false

// Example Instances of Patient including ethnicity
Instance: Patient-Ethnicity-Level2
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with only ethnicity level-2 coding included"
* name
  * use = #usual
  * given[0] = "James"
  * family = "Pond"
  * text = "James Pond"
* birthDate = "1966-01-05"
* gender = #male

* extension[ethnicity][+].valueCodeableConcept.coding[+].code = #21
* extension[ethnicity][=].valueCodeableConcept.coding[=].system = $NZStatsEthnicityLevel2
* extension[ethnicity][=].valueCodeableConcept.coding[=].display = "Māori"


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
* address[=].text = "100 Cambridge Street Kelvin Grove Palmerston North 4410 NEW ZEALAND"

* deceasedBoolean = false

