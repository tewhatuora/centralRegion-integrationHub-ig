// Patient profile for Central Region
//   - We don't support many fields from NZBasePatient
//   - We have many of our own Terminology codings
Profile: NZCentralRegionPatient
Parent: $NZBasePatient
Description: "Patient resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint

* active 0..0
* implicitRules 0..0
* language 0..0
* contained 0..0

* name 1..* MS
  * use 1..1 MS
    * ^short = "one of: official / nickname"
  * text 1..1 MS
  * family 1..1 MS
  * given MS
  * prefix MS
  * suffix 0..0
  * extension 0..0
  * id 0..0

* address 0..* MS
  * extension[building-name] 0..0
  * extension[nz-geocode] 0..0
  * extension[domicile-code] 0..0
  * extension[suburb] 0..1 MS
  * use 0..1 MS
  * type 1..1 MS
  * type = #postal
  * type ^short = "Fixed value: postal"
  * text 1..1 MS
  * line 0..1 MS
  * city 0..1 MS
  * district 0..0
  * state 0..1 MS // req'd for foreign addresses
  * postalCode 0..1 MS
  * country 1..1 MS
  * period 0..0
  * id 0..0

* telecom 1..3
  * extension[cp-purpose] 0..0
  * period 0..0
  * rank 0..0
  * system 1..1 MS
  * value 1..1 MS
  * use 1..1 MS
  * extension 0..0
  * id 0..0

* extension[domicile-code] 0..1 MS
  * valueCodeableConcept.coding 1..1 MS
  * valueCodeableConcept.coding.code 1..1 MS 
  * valueCodeableConcept.coding.system 1..1 MS
  * valueCodeableConcept.coding.display 1..1 MS
  * valueCodeableConcept.coding.version 0..0      // code systems are not explicitly versioned
  * valueCodeableConcept.coding.userSelected 0..0 // data not available
  * valueCodeableConcept.text 0..0                // ode, Value and Display are all derived from Code value
  * valueCodeableConcept.extension 0..0
  * extension 0..0
  * id 0..0
  
* extension[dhb] 0..1 MS
  * valueCodeableConcept.coding 1..1 MS
  * valueCodeableConcept.coding.code 1..1 MS 
  * valueCodeableConcept.coding.system 1..1 MS
  * valueCodeableConcept.coding.display 1..1 MS
  * valueCodeableConcept.coding.version 0..0      // code systems are not explicitly versioned
  * valueCodeableConcept.coding.userSelected 0..0 // data not available
  * valueCodeableConcept.text 0..0                // ode, Value and Display are all derived from Code value
  * valueCodeableConcept.extension 0..0
  * extension 0..0
  * id 0..0


* gender 1..1  MS

* birthDate 1..1 MS
* multipleBirth[x] 0..0
* extension[sex-at-birth] 0..0

* extension[ethnicity] 0..3 MS
  * valueCodeableConcept.coding 1..* MS           //  <<<---- THIS ONE HERE is required to make the publisher work with the rest
  * valueCodeableConcept.coding.code 1..1 MS      // from PID-22.1
  * valueCodeableConcept.coding.system 1..1 MS    // based on which code from PID-22.1
  * valueCodeableConcept.coding.display 1..1 MS   // from PID-22.2 or by lookup from PID-22.1 ??
  * valueCodeableConcept.coding.version 0..0      // code systems are not explicitly versioned
  * valueCodeableConcept.coding.userSelected 0..0 // data not available
  * valueCodeableConcept.text 0..0    //  Code, Value and Display are all derived from Code value from PID-22.1
  * valueCodeableConcept.extension 0..0
  * ^short = "Two codings required: Level-2 codes as provided by WebPAS and Level-4 codes as preferred by NZ Base"
  * extension 0..0
  * id 0..0

* extension[nzCitizen] 1..1 MS
  * extension[status] 1..1 MS
    * valueCodeableConcept.coding 1..1 MS
    * valueCodeableConcept.coding.code 1..1 MS      // from PID-26.1
    * valueCodeableConcept.coding.system 1..1 MS    // based on which code from PID-26.1
    * valueCodeableConcept.coding.display 1..1 MS   // from PID-22.2 or by lookup from PID-26.1 ??
    * valueCodeableConcept.coding.version 0..0      // code systems are not explicitly versioned
    * valueCodeableConcept.coding.userSelected 0..0 // data not available
    * valueCodeableConcept.text 0..0    //  Code, Value and Display are all derived from Code value from PID-26.1
    * valueCodeableConcept.extension 0..0
    * valueCodeableConcept.id 0..0
    * ^short = "Is this person a New Zealand citizen? CodeableConcept: yes / no / unknown"
    * extension 0..0
    * id 0..0
  * extension[source] 0..0
  * id 0..0

// NZ Base v2.0.0 - hasn't defined things quite completely yet - so reusing Citizenship structure with Residency name....
* extension contains $NZBaseNZResidency named nzResidency 0..1 MS
* extension[nz-residency]
  * extension[status]
    * valueCodeableConcept.coding 1..* MS    
      * ^short = "Two codings possible 'yes|no' from NZ Base, and more detailed as available from WebPAS"       // Multiple codings possible
    * valueCodeableConcept.coding.code 1..1 MS      // from PID-28.1
    * valueCodeableConcept.coding.system 1..1 MS    
    * valueCodeableConcept.coding.display 1..1 MS   // from PID-28.2 or by lookup from PID-28.1 ??
    * valueCodeableConcept.coding.version 0..0      // code systems are not explicitly versioned
    * valueCodeableConcept.coding.userSelected 0..0 // data not available
    * valueCodeableConcept.text 0..0    //  Code, Value and Display are all derived from Code value from PID-28.1
    * valueCodeableConcept.extension 0..0
    * valueCodeableConcept.id 0..0
    * ^short = "Two codings possible:  'yes|no' from NZ Base, and more detailed as available from WebPAS"
    * extension 0..0
    * id 0..0
  * extension[source] 0..0
  * id 0..0

* extension[iwi] 0..0

* maritalStatus 1..1 MS
* maritalStatus from  nzcr-marital-status-vs (required)
  * coding 1..1 MS
  * coding.code 1..1 MS      // from PID-16.1
  * coding.system 1..1 MS    // based on which code from PID-16.1
  * coding.display 1..1 MS   // from PID-16.2 or by lookup from PID-16.1 ??
  * coding.version 0..0      // code systems are not explicitly versioned
  * coding.userSelected 0..0 // data not available
  * coding.extension 0..0
  * coding.id 0..0
  * text 0..0    //  Code, Value and Display are all derived from Code value from PID-16.1
  * extension 0..0
  * id 0..0
* photo 0..0

* extension contains $HL7PatientReligion named patient-religion 0..1 MS
* extension[patient-religion] 0..1 MS
  * valueCodeableConcept.coding 1..* MS           //  <<<---- THIS ONE HERE is required to make the publisher work with the rest
  * valueCodeableConcept.coding.code 1..1 MS      // from PID-17.1
  * valueCodeableConcept.coding.system 1..1 MS    // based on which code from PID-17.1
  * valueCodeableConcept.coding.display 1..1 MS   // from PID-22.2 or by lookup from PID-17.1 ??
  * valueCodeableConcept.coding.version 0..0      // code systems are not explicitly versioned
  * valueCodeableConcept.coding.userSelected 0..0 // data not available
  * valueCodeableConcept.text 0..0                //  Code, Value and Display are all derived from Code value from PID-17.1
  * valueCodeableConcept.extension 0..0
  * extension 0..0
  * id 0..0

* contact 0..* MS // A contact party (e.g. guardian, partner, friend) for the patient
  * relationship 1..1 MS
    * coding 2..* MS           // Both original raw value and value from http://terminology.hl7.org/CodeSystem/v2-0131
      * ^short = "One each for\r\n * http://terminology.hl7.org/CodeSystem/v2-0131 AND\r\n * https://standards.digital.health.nz/ns/central-region/contact-relationship"
    * coding.code 1..1 MS      // from NK1-3.1
    * coding.system 1..1 MS    // based on which code from NK1-3.1
    * coding.display 1..1 MS   // from NK1-3.2 or by lookup from NK1-3.1 ??
    * coding.version 0..0      // code systems are not explicitly versioned
    * coding.userSelected 0..0 // data not available
    * coding.extension 0..0
    * coding.id 0..0
    * text 0..0    //  Code, Value and Display are all derived from Code value from PID-16.1
    * extension 0..0
    * id 0..0
  * name 1..1 MS
    * use 0..0
    * text 1..1 MS
    * family 1..1 MS
    * given MS
    * prefix 0..1 MS
    * suffix 0..0
    * extension 0..0
    * id 0..0   
  * telecom 0..* MS
    * system 1..1 MS
    * value 1..1 MS
    * use 1..1 MS
    * rank 0..0
    * extension 0..0
    * id 0..0

  * address 0..0 // Contact Address is not included in RegionalMessageSpecification (yet)
  * gender 0..0
  * organization 0..0
  * period 0..1 MS
  * extension 0..0
  * id 0..0

* extension contains $HL7InterpreterRequiredCS named interpreterRequired 0..1 MS

* communication 0..* MS
  * language 1..1 MS
    * coding 1..* MS
    * coding.code 1..1 MS      // from PID-15.1
    * coding.system 1..1 MS    // based on which code from PID-15.1
    * coding.display 1..1 MS   // from PID-15.2 or by lookup from PID-15.1 ??
    * coding.version 0..0      // code systems are not explicitly versioned
    * coding.userSelected 0..0 // data not available
    * coding.extension 0..0
    * coding.id 0..0
    * text 0..0    //  Code, Value and Display are all derived from Code value from PID-15.1
    * extension 0..0
    * id 0..0
  * preferred 1..1 MS
  * extension 0..0
  * id 0..0

* generalPractitioner 0..1 MS // Patient's nominated primary care provider
  * type 1..1 MS
  * reference 0..1 MS
  * identifier 1..1 MS  // We must have at least local ID
    * use 1..1 MS
    * system 1..1 MS
    * value 1..1 MS
    * type 0..0 MS    // Data irrelevant
    * period 0..0     // Data not available
    * assigner 0..0   // Data not availale
    * extension 0..0
    * id 0..0
  * display 0..1 MS
  * extension 0..0
  * id 0..0
  

* managingOrganization 0..0   // Organization that is the custodian of the patient record    ... or maybe use PHO from NZBase ??
* extension[pho] 0..0 

* deceased[x] 1..1 MS
  * ^short = "deceasedBoolean = true if patient is deceased and deceased date/time is unknown, deceasedDateTime if known"

* link MS // Link to another patient resource that concerns the same actual person  
  * other  MS  
  * type   MS 
  * type ^short = "replaced-by | replaces"
  * extension 0..0
  * id 0..0

* extension contains $NZCentralRegionHL7v2Message named hl7v2-message 0..1 MS
