Mapping:  NZCentralRegionHL7V2ToPatient
Source:   NZCentralRegionPatient
Target:   "https://standards.digital.health.nz/ns/central-region/hl7-v2"
Id:       nzcr-patient-from-hl7v2
Title:    "Central Region Message Specification (1.14)"
Description:    "Central Region Message Specification (1.14) - Patient from ADT^031"

* -> "Patient"
* identifier[NHI] -> " " "if PID-3.4.2 == '2.16.840.1.113883.2.18.2'"
* identifier[NHI].system -> "'https://standards.digital.health.nz/ns/nhi-id'" "if PID-3.4.2 == '2.16.840.1.113883.2.18.2'"
* identifier[NHI].use -> "'usual'" "if PID-3.4.2 == '2.16.840.1.113883.2.18.2'"
* identifier[NHI].type -> " " "**as above**"
* identifier[NHI].value -> "PID-3.1"

* identifier -> " " "if PID-3.4.2 != '2.16.840.1.113883.2.18.2'"
* identifier.system -> "'https://standards.digital.health.nz/ns/central_region/pas-patient-id'" "if PID-3.4.2 != '2.16.840.1.113883.2.18.2'"
* identifier.use -> "'temp'" "if PID-3.4.2 != '2.16.840.1.113883.2.18.2'"

* identifier.value -> "PID-3.1"
* identifier.type.coding.code -> "'MR'"
* identifier.type.coding.system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
* identifier.type.coding.display -> "'Medical record number'"
// * identifier.period.start -> "PID-3.7"
// * identifier.period.end -> "PID-3.8"

* name -> "PID-5 and PID-9" "Repeat for PID-5 Patient Name and PID-9 Patient Aliases"
* name.use -> "'usual' | 'old'" "if mapping PID-5 then 'usual' elif mapping PID-9 then 'old'"
* name.text -> "PID-5.5 + ' ' + PID-5.2 + ' ' + PID-5.3 + ' ' + PID-5.1 or PID-9.5 + ' ' + PID-9.2 + ' ' + PID-9.3 + ' ' + PID-9.1"
* name.family -> "PID-5.1 or PID-9.1"
* name.given -> "PID-5.2 or PID-9.2 and PID-5.3 or PID-9.3" "PID-5.2 and PID-9.2 -> name.given[0] AND\r\n
PID-5.3 and PID-9.3 -> name.given[1]\r\n
Do NOT attempt to separate middle names"
* name.prefix -> "PID-5.5 or PID-9.5"

* telecom -> "PID-13 and PID-14" "Repeat for PID-13 and PID-14"
* telecom.value -> "PID-13.1 or PID-14.1"
* telecom.use -> "'home' | 'work'" "if mapping PID-13 then '**home**'\r\n elif mapping PID-14 then '**work**'"
* telecom.system -> "PID-13.3 or PID-14.3" "if 'PH' then '**phone**'\r\n
if 'FX' then '**fax**'\r\n
if 'CP' then '**sms**'\r\n
if 'BP' then '**pager**'\r\n
if 'NET' then '**email**'\r\n

Note: If only one phone entry with type '**CP**' then use '**phone**'"


* gender -> "PID-8" "if PID-8 == '**F**' then '**female**'\r\n
elif PID-8 == '**M**' then '**male**'\r\n
elif PIF-8 == '**U**' then '**unknown**'"

* birthDate -> "PID-7"

* extension[ethnicity] -> "PID-22, PID-10" "Repeat for each entry in PID-22.\r\nTwo coding entries, one each for\r\n * https://standards.digital.health.nz/ns/ethnic-group-level-4-code and\r\n * https://standards.digital.health.nz/ns/ethnic-group-level-2-code\r\nNote: May have to check *primary* ethnicity in PID-10 as well"
* extension[ethnicity].url -> "'http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity'"
* extension[ethnicity].valueCodeableConcept.coding.code -> "PID-22.1" "Which is group-level-2; lookup required for group-level-4.  ConceptMap ?"
* extension[ethnicity].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/ethnic-group-level-4-code and https://standards.digital.health.nz/ns/ethnic-group-level-2-code"
* extension[ethnicity].valueCodeableConcept.coding.display -> "PID-22.2" "Check for macrons in Māori and Cook Island Māori"

* address.type -> "'physical' | 'postal'" "if PID-11.7 == 'C' then 'physical'\r\nelif PID 11.7 == 'M' then 'postal'"
* address.text -> "PID-11.1 + ' ' + PID-11.2 + ' ' + PID-11.8 + ' ' + PID-11.3 + ' '+ PID-11.4 + ' '+ PID-11.5"
* address.line -> "PID-11.1 and PID-11.2" "if present, repeat as required"
* address.city -> "PID-11.3"
* address.state -> "PID-11.4" "if present"
* address.postalCode -> "PID-11.5" "if present"
* address.country -> "PID-11.6" "if present"
* address.extension[suburb].valueString -> "PID-11.8" "if present"
* address.extension[suburb].url -> "'http://hl7.org.nz/fhir/StructureDefinition/suburb'"

* extension[domicile-code].url -> "'http://hl7.org.nz/fhir/StructureDefinition/domicile-code'"
* extension[domicile-code].valueCodeableConcept.coding.code -> "PID-12"
* extension[domicile-code].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/domicile-code"

* extension[dhb].url -> "'http://hl7.org.nz/fhir/StructureDefinition/dhb'"
* extension[dhb].valueCodeableConcept.coding.code -> "PID-12" "one-to-many mapping from PID-12. Perhaps with ConceptMap ??"
* extension[dhb].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/dhb-code"

* maritalStatus.coding.code -> "PID-16.1"
* maritalStatus.coding.display -> "PID-16.2"
* maritalStatus.coding.system -> "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus or https://standards.digital.health.nz/ns/central-region/extra-marital-status"  "*Note:* We have extended v3-MaritalStatus with extra values"

* extension[interpreterRequired].url -> "'http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired'"
* extension[interpreterRequired].valueBoolean -> "PID-15.4" "if PID-15.4='Y' then 'true' else 'false'"

* communication.language.coding -> "PID-15"  "At least two codings:\r\n * https://standards.digital.health.nz/ns/central-region/pas-language AND \r\n * urn:ietf:bcp:47"
* communication.language.coding.code -> "PID-15.1" "[Language Concept Map](./ConceptMap-LanguageMap.html) provides mapping from [WebPAS raw code](./CodeSystem-nzcr-pas-language-cs.html)\r\n**Note:** `zOTH` and `zTEO` codes are mapped to special systems"
* communication.language.coding.display -> "PID-15.2"
* communication.language.coding.system -> "https://standards.digital.health.nz/ns/central-region/pas-language OR urn:ietf:bcp:47"  "ietf:bcp:47 includes all iso-639 language codes;"
* communication.preferred -> "'true'" "PID-15 is by definition the patient's preferred language"

* generalPractitioner -> "PD1-4" "Lookup using PD1-4.1 (local identifier) ??"
* generalPractitioner.type -> "'Practitioner'"
* generalPractitioner.reference -> "n/a" "Internal GUID"
* generalPractitioner.identifier.use -> "'usual'" 
* generalPractitioner.identifier.value -> "PD1-4.1"
* generalPractitioner.identifier.system -> "https://standards.digital.health.nz/ns/central-region/pas-practitioner-id" "if PD1-4.9.2 == '2.16.840.1.113883.2.18.66.3.2.0'"
* generalPractitioner.identifier.type.coding -> " " "Practitioner Identifiers are locally assigned within PAS"
  * code -> "'LR'"
  * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
  * display -> "'Local registry ID'"
* generalPractitioner.display -> "PD1-4.2 + ', ' + PD1-4.3 + ' ' + PD1-4.4 + '  + PD1=4.6"

* extension[nzCitizen] -> "PID-26" "Only using status, source not available"
* extension[nzCitizen].url -> "'http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship'"
* extension[nzCitizen].extension[status].url -> "'status'"
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code -> "PID-26.1" "if PID-26.1 = 'Y' then 'yes'
elif PID-26.1='N' then 'no'
else 'unknown'"
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.display -> "PID-26.1" "if PID-26.1 = 'Y' then 'Yes'
elif PID-26.1='N' then 'No'
else 'Unknown'"
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/nz-citizenship-status-code"

* extension[nzResidency].url -> "'http://hl7.org.nz/fhir/StructureDefinition/nz-residency'"
* extension[nzResidency] -> "PID-28" "Only using status, source not available"
* extension[nzResidency].extension[status].url -> "'status'"
* extension[nzResidency].extension[status].valueCodeableConcept.coding -> "Repeat for each coding"
* extension[nzResidency].extension[status].valueCodeableConcept.coding.code -> "PID-28.1" "Raw value and mapped from webPAS residency status"
* extension[nzResidency].extension[status].valueCodeableConcept.coding.display -> "PID-28.2" "Raw value and mapped from webPAS residency status."
* extension[nzResidency].extension[status].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/central-region/nz-residency-code AND\r\n
https://standards.digital.health.nz/ns/nz-residency-code"

* extension[patient-religion].url -> "'http://hl7.org/fhir/StructureDefinition/patient-religion'"
* extension[patient-religion].valueCodeableConcept.coding -> "Repeat for each coding" "Some codes don't map - eg: Ratana, No Religion, Refused to Answer, etc."
* extension[patient-religion].valueCodeableConcept.coding.code -> "PID-17.1" "Raw value and mapped from webPAS religion codes"
* extension[patient-religion].valueCodeableConcept.coding.display -> "PID-17.2" "Appropriate value from code lookup"
* extension[patient-religion].valueCodeableConcept.coding.system -> "https://standards.digital.health.nz/ns/central-region/patient-religion AND\r\n
http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation"

* contact -> "NK1" "Repeat for each NK1 segment"
* contact.text -> "NK1.3" "Provided text"
* contact.relationship.coding -> "NK1" "http://terminology.hl7.org/CodeSystem/v2-0131 AND\r\nhttps://standards.digital.health.nz/ns/central-region/contact-relationship"
* contact.relationship.coding.code -> "NK1-3.1" "Raw value in one entry, and **'N'** - for Next of Kin for the other; as data is derived from NK1 segments"
* contact.relationship.coding.display -> "NK1-3.2"
* contact.relationship.coding.system -> "https://standards.digital.health.nz/ns/central-region/contact-relationship OR\r\nhttp://terminology.hl7.org/CodeSystem/v2-0131"

* contact.name.text -> "NK1-2.5 + ' ' + NK1-2.1 + ' 'NK1-2.2 + '"
* contact.name.family -> "NK1-2.1"
* contact.name.given -> "NK1-2.2"
* contact.name.prefix -> "NK1-2.5" "if present"

* contact.telecom -> "NK1" "Repeat for NK1-5 and NK1-6"
* contact.telecom.value -> "NK1-5.1 or NK1-6.1"
* contact.telecom.use -> "'home' | 'work'" "if mapping NK1-5 then '**home**'\r\n elif mapping NK1-6 then '**work**'"
* contact.telecom.system -> "NK1-5.3 or NK1-6.3" "if 'PH' then '**phone**'\r\n
if 'FX' then '**fax**'\r\n
if 'CP' then '**sms**'\r\n
if 'BP' then '**pager**'\r\n
if 'NET' then '**email**'\r\n

Note: If only one phone entry with type '**CP**' then use '**phone**'"
* deceasedDateTime -> "PID-29"  "if known"
* deceasedBoolean -> "PID-30"


* meta.extension[hl7v2Message].url -> "'https://standards.digital.health.nz/ns/central-region/hl7-message'"
* meta.extension[hl7v2Message].valueBase64Binary -> "Entire incoming HL7 message" "Base64 encoded"