Mapping:  NZCentralRegionV2ToPatient
Source:   NZCentralRegionPatient
Target:   "https://standards.digital.health.nz/ns/central-region/hl7-v2"
Id:       nzcr-patient-from-hl7v2
Title:    "Central Region Message Specification (1.14)"

* -> "Patient"
* identifier.value -> "PID-3.1"
* identifier.system -> "https://standards.digital.health.nz/ns/nhi-id"
* identifier.use -> "if PID-3.4.2 == '2.16.840.1.113883.2.18.2' then 'usual'"
* identifier.type.coding.code -> "if PID-3.4.2 == '2.16.840.1.113883.2.18.2' then 'MR'"
* identifier.type.coding.system -> "if PID-3.4.2 == '2.16.840.1.113883.2.18.2' then 'https://www.hl7.org/fhir/v2/0203'"
* identifier.type.coding.display -> "if PID-3.4.2 == '2.16.840.1.113883.2.18.2' then 'Medical Record Number'"
// * identifier.period.start -> "PID-3.7"
// * identifier.period.end -> "PID-3.8"

* name -> "Repeat for PID-5 Patient Name and PID-9 Patient Aliases"
* name.use -> "if mapping PID-5 then 'official' elif mapping PID-9 then 'nickname'"
* name.text -> "PID-5.5 + ' ' + PID-5.2 + ' ' + PID-5.3 + ' ' + PID-5.1 or PID-9.5 + ' ' + PID-9.2 + ' ' + PID-9.3 + ' ' + PID-9.1"
* name.family -> "PID-5.1 or PID-9.1"
* name.given -> "PID-5.2 or PID-9.2 and PID-5.3 or PID-9.3" "name.given[0] -> FirstName AND name.given[1] -> middleNamaes - Do NOT attempt to separate middle names"
* name.prefix -> "PID-5.5 or PID-9.5"

* telecom -> "Repeat for PID-13 and PID-14"
* telecom.value -> "PID-13.1 or PID-14.1"
* telecom.use -> "if mapping PID-13 then 'home' elif mapping PID-13 then 'work'"
* telecom.system -> "PID-13.3 or PID-14.3 -
if 'PH' then 'phone'
if 'FX' then 'fax'
if 'CP' then 'sms'
if 'BP' then 'pager'
if 'NET' then 'email'

Note: If only one phone entry with type 'CP' then use 'phone'"


* gender -> "PID-8 - 
if PID-8 == 'F' then 'female'
elif PID-8 == 'M' then 'male'
elif PIF-8 == 'U' then 'unknown'"

* birthDate -> "PID-7"

* extension[ethnicity] -> "Two coding entries, one each for https://standards.digital.health.nz/ns/ethnic-group-level-4-code and https://standards.digital.health.nz/ns/ethnic-group-level-2-code"
* extension[ethnicity].valueCodeableConcept.coding.code -> "PID-22.1 - which is group-level-2"
* extension[ethnicity].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/ethnic-group-level-4-code and https://standards.digital.health.nz/ns/ethnic-group-level-2-code"
* extension[ethnicity].valueCodeableConcept.coding.display -> "Check for macrons in Māori and Cook Island Māori"

* address.type -> "Hard-coded to 'postal'"
* address.use -> "if PID-11.7 == 'C' then 'home'
elif PID 11.7 == 'B' then 'work'"
* address.text -> "PID-11.1 + ' ' + PID-11.2 + ' ' + PID-11.8 + ' ' + PID-11.3 + ' '+ PID-11.4 + ' '+ PID-11.5"
* address.line -> "PID-11.1 and PID-11.2 (if present)"
* address.city -> "PID-11.3"
* address.state -> "PID-11.4"
* address.postalCode -> "PID-11.5"
* address.country -> "PID-11.6"
* address.extension[suburb].valueString -> "PID-11.8"

* extension[domicile-code].valueCodeableConcept.coding.code -> "PID-12"
* extension[domicile-code].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/domicile-code"

* extension[dhb].valueCodeableConcept.coding.code -> "dhbLookup(PID-12) - perhaps with ConceptMap ??"
* extension[dhb].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/dhb-code"

* maritalStatus.coding.code -> "PID-16.1"
* maritalStatus.coding.display -> "PID-16.2"
* maritalStatus.coding.system -> "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus or https://standards.digital.health.nz/ns/central-region/extra-marital-status (as appropriate)"

* extension[interpreterRequired].valueBoolean -> "PID-15.4"

* communication.language.coding.code -> "PID-15.1"
* communication.language.coding.display -> "PID-15.2"
* communication.language.coding.system -> ""

* generalPractitioner -> "Lookup using PD1-4.1 (local identifier) ??"
* generalPractitioner.type -> "'Practitioner'"
* generalPractitioner.identifier.value -> "PD1-4.1"
* generalPractitioner.identifier.system -> "if PD1-4.9.2 == '2.16.840.1.113883.2.18.66.3.2.0' then 'https://standards.digital.health.nz/ns/pas-practitioner-id'"
* generalPractitioner.display -> "PD1-4.2 + ', ' + PD1-4.3 + ' ' + PD1-4.4 + '  + PD1=4.6"

/*
* extension[nzCitizen] -> "Only using status, source not availabnle"
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code -> "if PID-26.1 = 'Y' then 'yes'
elif PID-26.1='N' then 'no'
else 'unknown'"
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display -> "if PID-26.1 = 'Y' then 'Yes'
elif PID-26.1='N' then 'No'
else 'Unknown'"
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/nz-citizenship-status-code"

* extension[nzResidency] -> "Only using status, source not availabnle"
* extension[nzResidency].extension[status].valueCodeableConcept.coding.code -> "if PID-28.1 = 'Y' then 'yes'
elif PID-28.1='N' then 'no'
else 'unknown'"
* extension[nzResidency].extension[status].valueCodeableConcept.coding.display -> "if PID-28.1 = 'Y' then 'Yes'
elif PID-28.1='N' then 'No'
else 'Unknown'"
* extension[nzResidency].extension[status].valueCodeableConcept.coding.system -> "https://nzhts.digital.health.nz/fhir/ValueSet/nz-residency-code"
*/