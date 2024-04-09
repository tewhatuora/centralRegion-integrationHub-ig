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

* category 1..1 MS

// SmileCDR validator doesn't recognise addition-binding extension so gotta do slicing (for now)
// * category from $HL7FlagCategoryVS (required)
// * category insert AdditionalBindingByExtension(#required, $NZCentralRegionFlagAlertCategoryVS)

  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "system"
  * coding ^slicing.rules = #open
  * coding ^slicing.description = "Slice based on the coding[].system"
  * coding contains fhirOrig 1..1 and rawSource 1..1

  * coding[fhirOrig].system = "http://terminology.hl7.org/CodeSystem/flag-category" (exactly)
  * coding[fhirOrig].code from $HL7FlagCategoryVS (required)

  * coding[rawSource].system = "https://standards.digital.health.nz/ns/central-region/alert-category" (exactly)
  * coding[rawSource].code from $NZCentralRegionFlagAlertCategoryVS (required)

  * coding MS
  * coding.system 1..1 MS
  * coding.display 1..1 MS
  * coding.version 0..0      // code systems are not explicitly versioned
  * coding.userSelected 0..0 // data not available
  * coding.extension 0..0
  * coding.id 0..0
  * text 0..0 MS
  * extension 0..0
  * id 0..0


* code from nzcr-flag-alert-code-vs (required)
* code 1..1 MS
  * coding 0..* MS       // Categories NHIMWS, MA & MC are 'free-text' categories, which can't be coded
    * code 0..1 MS 
    * system 1..1 MS
    * display 1..1 MS
    * version 0..0       // code systems are not explicitly versioned
    * userSelected 0..0  // data not available
    * extension 0..0
    * id 0..0
  * text 0..1 MS        // Used for categories NHIMWS, MA & MC
  * extension 0..0
  * id 0..0

* obeys nzcr-uncoded-flags and nzcr-coded-flags

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

* author 0..1 MS
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
    nzcr-alert named flag-alert 1..1 MS 

* extension[flag-alert]
  * extension[severityLevel]
    * ^definition = "Severity Level - 'W' for Alert/Flag"
    * ^short = "Severity Level - 'W' for Alert/Flag"

  * extension[inactiveDate] 0..1 MS     // not to be confused with period.end
  * extension[reviewDate] 0..1 MS
  * extension[lastUpdatedBy] 0..1 MS
  * extension[lastUpdatedDateTime] 0..1 MS
  * extension[recordingHospital] 1..1 MS
  * extension[comments] 0..1 MS        // Flag doesn't have 'note' field

// We have a standard set of fields in all Resource.meta blocks
* meta insert ResourceMetaFields
