// Patient profile for Central Region
//   - We don't support many fields from NZBasePatient
//   - We have many of our own Terminology codings
Profile: NZCentralRegionPatient
Parent: $NZBasePatient
Description: "Patient resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint

* identifier 1..* MS  // We must have at least local ID
  * use 1..1 MS
  * system 1..1 MS
  * value 1..1 MS
  * type 1..1 MS
  * type.coding MS
    * code 1..1 MS
    * system 1..1 MS
    * display 1..1 MS
  * period 0..0     // Data not available
  * assigner 0..0   // Data not availale
  * extension 0..0
  * id 0..0

* contained 0..0
* implicitRules 0..0
* language 0..0

* active 0..1     // set to #true or #false for each side of ADT^A40 patient merge message

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
  * extension[domicile-code] 0..1 MS
    * valueCodeableConcept.coding 1..1 MS
    * valueCodeableConcept.coding.code 1..1 MS 
    * valueCodeableConcept.coding.system 1..1 MS
    * valueCodeableConcept.coding.display 1..1 MS
    * valueCodeableConcept.coding.version 0..0      // code systems are not explicitly versioned
    * valueCodeableConcept.coding.userSelected 0..0 // data not available
    * valueCodeableConcept.text 0..0                // Code, Value and Display are all derived from Code value
    * valueCodeableConcept.extension 0..0
    * id 0..0  
  * extension[suburb] 0..1 MS
  * use 1..1 MS           // hard-coded to 'home' in templates
  * type 1..1 MS
  * type ^short = "PHYSICAL | POSTAL"
  * text 0..0             // not using it
  * line 0..2 MS          // PID-11.1 and PID-11.2  get a line each
  * city 0..1 MS
  * district 0..0
  * state 0..1 MS         // req'd for foreign addresses
  * postalCode 0..1 MS
  * country 0..1 MS       //   WebPAS seems to be leaving out the country on NZ addresses
  * period 0..0
  * id 0..0

* telecom 0..* MS
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
  * id 0..0


* gender 1..1  MS

* birthDate 1..1 MS
* multipleBirth[x] 0..0
* extension[sex-at-birth] 0..0


// SmileCDR validator doesn't recognise addition-binding extension so gotta do slicing (for now)
* extension contains nzcr-ethnicity named nzcrEthnicity 0..3 MS
* extension[nzcrEthnicity]
  * valueCodeableConcept
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "system"
    * coding ^slicing.rules = #open
    * coding ^slicing.description = "Slice based on the coding[].system"
    * coding contains level2 1..1 and level4 1..1

    * coding[level2].system = $NZStatsEthnicityLevel2CS (exactly)
    * coding[level2].code from $NZCentralRegionEthnicityLevel2VS (required)

    * coding[level4].system = $NZStatsEthnicityLevel4CS (exactly)
    * coding[level4].code from $NZStatsEthnicityLevel4VS (required)

* extension[nzcrEthnicity]
  * valueCodeableConcept.coding MS
  * valueCodeableConcept.coding.code 1..1 MS      // from PID-22.1
  * valueCodeableConcept.coding.system 1..1 MS    // based on which code from PID-22.1
  * valueCodeableConcept.coding.display 1..1 MS   // from PID-22.2 or by lookup from PID-22.1 ??
  * valueCodeableConcept.coding.version 0..0      // code systems are not explicitly versioned
  * valueCodeableConcept.coding.userSelected 0..0 // data not available
  * valueCodeableConcept.text 0..0    //  Code, Value and Display are all derived from Code value from PID-22.1
  * valueCodeableConcept.extension 0..0
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
    * valueCodeableConcept.id 0..0
      * ^short = "Is this person a New Zealand citizen? CodeableConcept: yes / no / unknown"
    * id 0..0
  * extension[source] 0..0
  * id 0..0

// NZ Base v2.0.0 - has defined the Residency but not added it to the NZPatient profile
* extension contains $NZCentralRegionResidency named nzcrResidency 0..1 MS
* extension[nzcrResidency]

  // SmileCDR validator doesn't recognise addition-binding extension so gotta do slicing (for now)
  * extension[status]
    * valueCodeableConcept
      * coding ^slicing.discriminator.type = #pattern
      * coding ^slicing.discriminator.path = "system"
      * coding ^slicing.rules = #open
      * coding ^slicing.description = "Slice based on the coding[].system"
      * coding contains nzBase 1..1 and rawSource 1..1
 
      * coding[nzBase].system = $NZBaseNZResidencyCS
      * coding[nzBase].code from $NZBaseNZResidencyVS (required)

      * coding[rawSource].system = $NZCentralRegionResidencyCS (exactly)
      * coding[rawSource].code from $NZCentralRegionResidencyVS (required)

    * valueCodeableConcept.coding MS    
    * valueCodeableConcept.coding.code 1..1 MS      // from PID-28.1
    * valueCodeableConcept.coding.system 1..1 MS    
    * valueCodeableConcept.coding.display 1..1 MS   // from PID-28.2 or by lookup from PID-28.1 ??
    * valueCodeableConcept.coding.version 0..0      // code systems are not explicitly versioned
    * valueCodeableConcept.coding.userSelected 0..0 // data not available
    * valueCodeableConcept.text 0..0    //  Code, Value and Display are all derived from Code value from PID-28.1
    * valueCodeableConcept.id 0..0
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

// SmileCDR validator doesn't recognise addition-binding extension so gotta do slicing (for now)
* extension contains nzcr-religion named nzcrReligion 0..1 MS
* extension[nzcrReligion].valueCodeableConcept
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "system"
  * coding ^slicing.rules = #open
  * coding ^slicing.description = "Slice based on the coding[].system"
  * coding contains origFhir 0..1 and rawSource 1..1    // some values like 'Refuse to Answer' have no code in the origFhir coding

  * coding[origFhir].system = $HL7PatientRelgionCS (exactly)
  * coding[origFhir].code from $HL7PatientRelgionVS (required)

  * coding[rawSource].system = $NZCentralRegionReligionCS (exactly)
  * coding[rawSource].code from $NZCentralRegionReligionVS (required)

  * coding MS
  * coding.code 1..1 MS      // from PID-17.1
  * coding.system 1..1 MS    // based on which code from PID-17.1
  * coding.display 1..1 MS   // from PID-22.2 or by lookup from PID-17.1 ??
  * coding.version 0..0      // code systems are not explicitly versioned
  * coding.userSelected 0..0 // data not available
  * text 0..0                //  Code, Value and Display are all derived from Code value from PID-17.1
  * id 0..0

* contact 0..* MS // A contact party (e.g. guardian, partner, friend) for the patient
  //* relationship from nzcr-combined-contact-relationship-vs
  * relationship 1..1 MS
    //* coding ^slicing.discriminator.type = #pattern
    //* coding ^slicing.discriminator.path = "system"
    //* coding ^slicing.rules = #open
    //* coding ^slicing.description = "Slice based on the coding[].system"
    //* coding contains origFhir 1..1 and rawSource 1..1

    //* coding[origFhir].system = $HL7RelationshipCS (exactly)
    //* coding[origFhir].code from $HL7RelationshipVS (required)

    //* coding[rawSource].system = $NZCentralRegionContactRelationshipCS  (exactly)
    //* coding[rawSource].code from nzcr-contact-relationship-vs (required)

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

* extension contains $HL7InterpreterRequired named interpreterRequired 0..1 MS

* communication 0..* MS
  //* language from nzcr-combined-language-vs
  * language 1..1 MS

    //* coding ^slicing.discriminator.type = #pattern
    //* coding ^slicing.discriminator.path = "system"
    //* coding ^slicing.rules = #open
    //* coding ^slicing.description = "Slice based on the coding[].system"
    //* coding contains ietf 1..1 and rawSource 1..1

    //* coding[ietf].system = $IETFLanguageCS (exactly)
    //* coding[ietf].code from $NZCentralRegionEthnicityLevel2VS (required)

    //* coding[rawSource].system = $NZCentralRegionRawLanguageCS  (exactly)
    //* coding[rawSource].code from nzcr-language-vs (required)

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
    * system = $NZCentralRegionPASPractitioner
    * type 1..1 MS
      * coding MS  
        * code 1..1 MS
        * code = #LR
        * system 1..1 MS 
        * system = $HL7IdentifierTypeCS
        * display 1..1 MS
        * display = "Local Registry ID"
        * version 0..0
        * userSelected 0..0
        * extension 0..0
        * id 0..0
      * text 0..0
      * extension 0..0
      * id 0..0
    * period 0..0
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
    * identifier 1..1 MS  // We're only using business-level identifiers
    * identifier ^short = "Business-level identifier for the Patient being replaced"
    * type MS
    * type = "Patient"    // Link to Resource of type Patient
    * type ^short = "Patient"
    * reference 0..0
    * display 0..0
  * type   MS             // link.type
  * type ^short = "replaced-by | replaces"
  * extension 0..0
  * id 0..0

// We have a standard set of fields in all Resource.meta blocks
* meta insert ResourceMetaFields
