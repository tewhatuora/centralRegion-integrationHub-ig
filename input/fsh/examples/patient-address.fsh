// Example Instances of Patient with different address fields
Instance: Patient-Suburb
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with address containing suburb field"
* name
  * use = #usual
  * given[0] = "James"
  * family = "Pond"
  * text = "James Pond"
* birthDate = "1966-01-05"
* gender = #male

* maritalStatus.coding[+].code = #S
* maritalStatus.coding[=].system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
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

