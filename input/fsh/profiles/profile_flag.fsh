// Flag profile for Central Region
Profile: NZCentralRegionFlag
Parent: http://hl7.org/fhir/StructureDefinition/Flag
Description: "Flag resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint

* implicitRules 0..0
* language 0..0
* contained 0..0

* identifier 1..1 MS
  * use 1..1 MS
  * system 1..1 MS
  * system = $NZCentralRegionLocalAlertId
  * value 1..1 MS
  * type 0..0       // Nothing appropriate
  * period 0..0
  * assigner 0..0
  * extension 0..0
  * id 0..0

* status 1..1 MS

* category from nzcr-flag-alert-category-vs (required)
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


* code from nzcr-flag-alert-code-vs (required)
* code 1..1 MS
  * coding 1..* MS
    * code 1..1 MS 
    * system 1..1 MS
    * display 1..1 MS
    * version 0..0       // code systems are not explicitly versioned
    * userSelected 0..0  // data not available
    * extension 0..0
    * id 0..0
  * text 0..0                // ode, Value and Display are all derived from Code value
  * extension 0..0
  * id 0..0

* subject 1..1 MS
  * type 1..1 MS
  * type = "Patient"
  * reference 0..1 MS
  * identifier 1..1 MS  // We must have only the NHI
    * use 1..1 MS
    * system 1..1 MS
    * system = $NZBaseNHI
    * value 1..1 MS
    * type 1..1 MS
      * coding MS  
        * code 1..1 MS
        * system 1..1 MS
        * system = $HL7IdentifierTypeCS
        * display 1..1 MS
        * version 0..0
        * userSelected 0..0
        * extension 0..0
        * id 0..0
      * text 0..0
      * extension 0..0
      * id 0..0
    * period 0..0     // Data not available
    * assigner 0..0   // Data not available
    * extension 0..0
    * id 0..0
  * display 0..1 MS
  * extension 0..0
  * id 0..0
  
* period 1..1 MS
  * start 1..1 MS
  * end 0..1 MS
  * extension 0..0
  * id 0..0

* author 1..1 MS
  * type 1..1 MS
  * type = "Practitioner"
    * ^short = "Type the reference refers to (e.g. 'Practitioner')"
  * reference 0..1 MS
  * identifier 1..1 MS  // We must have the PAS Practitioner Id
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
    * period 0..0     // Data not available
    * assigner 0..0   // Data not available
    * extension 0..0
    * id 0..0
  * display 0..1 MS
  * extension 0..0
  * id 0..0

* encounter 0..0

* extension contains 
    nzcr-hl7v2-message named hl7v2Message 1..1 MS and
    nzcr-alert named flag-alert 1..1 MS 

* extension[flag-alert].extension[severityLevel]
  * ^definition = "Severity Level - 'W' for Alert/Flag"
  * ^short = "Severity Level - 'W' for Alert/Flag"

/*
* extension[flag-alert]
  * extension[allergyReaction] 0..0  // only for allergies
  * extension[severityLevel] 1..1 MS
  * extension[inactiveDate] 0..1 MS   // not to be confused with period.end
  * extension[reviewDate] 0..1 MS
  * extension[lastUpdatedBy] 0..1 MS
  * extension[lastUpdatedDateTime] 0..1 MS
  * extension[recordingHospital] 1..1 MS
  * extension[comments] 0..1 MS
*/