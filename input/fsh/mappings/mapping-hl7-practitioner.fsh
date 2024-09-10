Mapping:  NZCentralRegionHL7V2ToPractitioner
Source:   NZCentralRegionPractitioner
Target:   "https://standards.digital.health.nz/ns/central-region/hl7-v2"
Id:       nzcr-practitioner-from-hl7v2
Title:    "Central Region Message Specification (1.14)"
Description:    "Central Region Message Specification (1.14) - Practitioner from ADT^031 PID, PD1, ZAL and ZLS segments"

* -> "Practitioner"

* identifier -> "PD1->4"  "Patient's General Practitioner"
* identifier.use -> "'usual'" 
* identifier.value -> "PD1-4.1"
* identifier.system -> "'https://standards.digital.health.nz/ns/central-region/pas-practitioner-id'"
* identifier.type.coding -> " " "Practitioner Identifiers are locally assigned within PAS"
  * code -> "'LR'"
  * system -> "'http://terminology.hl7.org/CodeSystem/v2-0203'"
  * display -> "'Local registry ID'"

* name -> "PD1-4"
* name.use -> "'usual'" 
* name.text -> "PD1-4.4 + ' ' + PD1-4.3 + ' ' + PD1-5.2"
* name.family -> "PD1-4.2"
* name.given -> "PD1-4.3"
* name.prefix -> "PD1-4.4"


* identifier -> "ZAL->10"  "Clinician authorising Patient's medical alert"
* identifier.value -> "ZAL-10.1"
* name -> "ZAL-10"
* name.text -> "ZAL-10.4 + ' ' + ZAL-10.3 + ' ' + ZAL-10.2"
* name.family -> "ZAL-10.2"
* name.given -> "ZAL-10.3"
* name.prefix -> "ZAL-10.4"


* identifier -> "ZLS-6" "Clinician authorising conducting Patient's medical health legal status review"
* identifier.value -> "ZLS-6.1"
* name -> "ZLS-6" 
* name.text -> "ZLS-6.4 + ' ' + ZLS-6.3 + ' ' + ZLS-6.2"
* name.family -> "ZLS-6.2"
* name.given -> "ZLS-6.3"
* name.prefix -> "ZLS-6.4"
