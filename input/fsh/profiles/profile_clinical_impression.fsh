// ClinicalImpression profile for Central Region - to hold mental health Legal Status
Profile: NZCentralRegionClinicalImpression
Parent: http://hl7.org/fhir/StructureDefinition/ClinicalImpression
Description: "ClinicalImpression resource for Te Whatu Ora, Central Region - holds mental health legal statuses"

* ^derivation = #constraint

* implicitRules 0..0
* language 0..0
* contained 0..0

* identifier 1..1 MS
  * use 1..1 MS
  * system 1..1 MS
  * system = $NZCentralRegionLocalClinicalImpressionId
  * value 1..1 MS
  * type 0..0       // Nothing appropriate
  * period 0..0
  * assigner 0..0
  * extension 0..0
  * id 0..0

* status 1..1 MS

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
  
* effective[x] 1..1 MS
* effective[x] only dateTime

* date MS

* assessor
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

* problem 0..1 MS

* summary 1..1 MS
 
* extension contains
    nzcr-mental-health named mentalHealth 1..1 MS and
    nzcr-hl7v2-message named hl7v2Message 1..1 MS

* code 0..0                        // no data

* statusReason 0..0                // no data
* description 0..0                 // no data
* encounter 0..0                   // no data

* previous 0..0                    // no data
* protocol 0..0                    // no data
* prognosisCodeableConcept 0..0    // no data
* prognosisReference 0..0          // no data
* supportingInfo 0..0
* note 0..0