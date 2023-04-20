// Example Instances of Patient with different Marital Status values
Instance: Patient-CivilUnion
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with one of the extra marital status codes"
* name
  * given[0] = "James"
  * family = "Pond"
* birthDate = "1966-01-05"
* gender = #male

* maritalStatus.coding[+].code = #V
* maritalStatus.coding[=].system = Canonical(nzcr-extra-marital-status-code-system)
* maritalStatus.coding[=].display = "Civil Union"
* maritalStatus.text = "Civil Union"

* telecom[+].system = #phone
* telecom[=].value = "021 555 888 6"
* telecom[=].use = #home

* address[+].type = #postal
* address[=].text = "100 Broadway Avenue Palmerston North 4410 NEW ZEALAND"
* address[=].line[+] = "100 Broadway Avenue"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4410"
* address[=].country = "NEW ZEALAND"

* deceasedBoolean = false

Instance: Patient-Single
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with one of the HL7 v3 marital status codes"
* name
  * given[0] = "James"
  * family = "Pond"
* birthDate = "1966-01-05"
* gender = #male

* maritalStatus.coding[+].code = #S
* maritalStatus.coding[=].system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding[=].display = "Never Married"
* maritalStatus.text = "Never Married"

* telecom[+].system = #phone
* telecom[=].value = "021 555 888 6"
* telecom[=].use = #home

* address[+].type = #postal
* address[=].text = "100 Broadway Avenue Palmerston North 4410 NEW ZEALAND"
* address[=].line[+] = "100 Broadway Avenue"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4410"
* address[=].country = "NEW ZEALAND"

* deceasedBoolean = false
