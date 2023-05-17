// Flag profile for Central Region
Profile: NZCentralRegionFlag
Parent: http://hl7.org/fhir/StructureDefinition/Flag
Description: "Flag resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint
* id 0..0

* implicitRules 0..0
* language 0..0
* contained 0..0

* category from nzcr-flag-alert-type-value-set (required)
* category 1..1 MS
  * coding 1..* MS
  * coding.code 1..1 MS 
  * coding.system 1..1 MS
  * coding.display 1..1 MS
  * coding.version 0..0      // code systems are not explicitly versioned
  * coding.userSelected 0..0 // data not available
  * coding.extension 0..0
  * coding.id 0..0
  * text 0..0                // code, Value and Display are all derived from Code value
  * extension 0..0
  * id 0..0


* code from nzcr-flag-alert-code-value-set (required)
* code 1..1 MS
  * coding 1..* MS
  * coding.code 1..1 MS 
  * coding.system 1..1 MS
  * coding.display 1..1 MS
  * coding.version 0..0       // code systems are not explicitly versioned
  * coding.userSelected 0..0  // data not available
  * coding.extension 0..0
  * coding.id 0..0
  * text 0..0                // ode, Value and Display are all derived from Code value
  * extension 0..0
  * id 0..0

* subject 1..1 MS
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

* period 1..1 MS
  * start 1..1 MS
  * end 0..1 MS

* author 1..1 MS
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

* encounter 0..0

* extension contains 
    NZCentralRegionHL7v2Message named hl7v2Message 1..1 MS and
    NZCentralRegionAllergyAlert named allergy-alert 1..1 MS 
