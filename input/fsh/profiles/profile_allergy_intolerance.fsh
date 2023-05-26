// AllergyIntolerance profile for Central Region
Profile: NZCentralRegionAllergyIntolerance
Parent: http://hl7.org/fhir/StructureDefinition/AllergyIntolerance
Description: "AllergyIntolerance resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint
* id 0..0

* identifier 1..1 MS
  * system 1..1 MS
  * system = $NZCentralRegionLocalAlertId
  * value 1..1 MS
  * type 0..0       // Nothing appropriate
  * period 0..0
  * assigner 0..0
  * extension 0..0
  * id 0..0
  
* clinicalStatus 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * system 1..1 MS
    * system = $HL7AllergyClinicalStatusCS
    * display 1..1 MS
    * version 0..0
    * userSelected 0..0
    * extension 0..0
    * id 0..0
  * extension 0..0
  * id 0..0

* verificationStatus  1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * system 1..1 MS
    * system = $HL7AllergyVerificationCS
    * display 1..1 MS
    * version 0..0
    * userSelected 0..0
    * extension 0..0
    * id 0..0
  * extension 0..0
  * id 0..0

* type  1..1 MS
  * value 0..0
  * extension 0..0
  * id 0..0

* category  1..1 MS
  * value 0..0
  * extension 0..0
  * id 0..0

* criticality  1..1 MS
  * value 0..0
  * extension 0..0
  * id 0..0

* code from nzcr-allergy-alert-code-vs (required)
* code 1..1 MS
  * coding 1..1 MS
    * code 1..1 MS
    * system 1..1 MS
    * display 1..1 MS
    * version 0..0
    * userSelected 0..0
    * extension 0..0
    * id 0..0
  * extension 0..0
  * id 0..0
  
* patient MS
  * type 1..1 MS
  * type = "Patient"
  * reference 0..1 MS
  * identifier 1..1 MS
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
  
  
* onset[x] 1..1 MS
  * ^short = "Use onsetDateTime when only start time is known; otherwise use onsetPeriod when both start and end time are known"
  * ^definition = "Use onsetDateTime when only start time is known; otherwise use onsetPeriod when both start and end time are known"
* onset[x] only dateTime or Period
* onsetDateTime MS
* onsetPeriod MS

* recorder 1..1 MS
  * type 1..1 MS
  * type = "Practitioner"
    * ^short = "Resource the reference refers to (e.g. 'Practitioner')"
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
  
* note 1..1 MS
  * author[x] 0..0 // no data available
  * time 0..0      // no data available
  * text 1..1 MS   // no data available

* reaction 0..0         // no data available - is record of specific reaction event
* encounter 0..0        // no data available
* recordedDate 0..0     // no data available
* asserter 0..0         // no data available
* lastOccurrence 0..0   // no data available

* extension contains 
    nzcr-hl7v2-message named hl7v2Message 1..1 MS and
    nzcr-alert named allergy-alert 1..1 MS 

* extension[allergy-alert]
  * extension[severityLevel] 1..1 MS     
    * ^definition = "Severity level in range 0..9"
    * ^short = "Severity level in range 0..9"
  * extension[allergyReaction] 1..1 MS
    * ^definition = "Allergy reaction code - defined as string, should be [allergy-reaction-code](./ValueSet-nzcr-allergy-reaction-vs.html)"
    * ^short = "Allergy reaction - should be [allergy-reaction-code](./ValueSet-nzcr-allergy-reaction-vs.html)"

  * extension[inactiveDate] 0..1 MS     // not to be confused with period.end
  * extension[reviewDate] 0..1 MS
  * extension[lastUpdatedBy] 0..1 MS
  * extension[lastUpdatedDateTime] 0..1 MS
  * extension[recordingHospital] 1..1 MS
  * extension[comments] 0..0 MS   // AllergyIntolerance has 'note' field
