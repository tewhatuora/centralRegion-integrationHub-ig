// Example Instances
Instance: PatientExample
InstanceOf: TwocrPatient
Description: "An example of a patient from Te Whatu Ora, Central Region"
* name
  * given[0] = "James"
  * family = "Pond"
* birthDate = "1966-01-05"
* gender = #male

* maritalStatus.coding[+].code = #V
* maritalStatus.coding[=].system = Canonical(twocr-marital-status-code-system)
* maritalStatus.coding[=].display = "Civil Union"
* maritalStatus.text = "Civil Union"

* telecom[+].system = #phone
* telecom[=].value = "021 555 888 6"
* telecom[=].use = #home
* telecom[=].rank = 1

* address[+].use = #home
* address[=].type = #postal
* address[=].text = "100 Broadway Avenue Palmerston North 4410 NEW ZEALAND"
* address[=].line[+] = "100 Broadway Avenue"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4410"
* address[=].country = "NEW ZEALAND"

* deceasedBoolean = false
