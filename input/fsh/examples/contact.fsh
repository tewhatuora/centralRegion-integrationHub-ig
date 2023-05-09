// Example Instances of Patient
Instance: Patient-Contact
InstanceOf: NZCentralRegionPatient
Description: "An example of a patient from Te Whatu Ora, Central Region, with Contact elements"

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

* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code = #yes
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system = $NZBaseNZCitizenshipCS
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display = "Yes"

* extension[nzResidency].extension[status].valueCodeableConcept.coding[+].code = #no
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].system = $NZBaseNZResidencyCS
* extension[nzResidency].extension[status].valueCodeableConcept.coding[=].display = "Not a Permanent Resident"

* contact
  * relationship.coding[+].code = #S
  * relationship.coding[=].system = "http://terminology.hl7.org/CodeSystem/v2-0131"
  * relationship.coding[=].display = "State Agency" 
  * relationship.coding[+].code = #21
  * relationship.coding[=].system = "https://standards.digital.health.nz/ns/central-region/contact-relationship"
  * relationship.coding[=].display = "Dept of Correction (NZ)"

  * name.family = "O'Leary"
  * name.given = "Karen"
  * name.text = "Officer Karen O'Leary"

  * telecom.system = #phone
  * telecom.use = #work
  * telecom.value = "+64 6 356 8855"

* deceasedBoolean = false

