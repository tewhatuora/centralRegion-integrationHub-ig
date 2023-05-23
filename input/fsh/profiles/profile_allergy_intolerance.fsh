// AllergyIntolerance profile for Central Region
Profile: NZCentralRegionAllergyIntolerance
Parent: http://hl7.org/fhir/StructureDefinition/AllergyIntolerance
Description: "AllergyIntolerance resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint
* id 0..0

* onset[x] only Period or dateTime

* extension contains 
    nzcr-hl7v2-message named hl7v2Message 1..1 MS and
    nzcr-alert named allergy-alert 1..1 MS 

* extension[allergy-alert]
  * extension[severityLevel] 1..1 MS     
    * ^definition = "Severity level in range 0..9"
    * ^short = "Severity level in range 0..9"
  * extension[allergyReaction] 1..1 MS
    * ^definition = "Allergy reaction code"
    * ^short = "Allergy reaction code"
  * extension[inactiveDate] 0..1 MS     // not to be confused with period.end
  * extension[reviewDate] 0..1 MS
  * extension[lastUpdatedBy] 0..1 MS
  * extension[lastUpdatedDateTime] 0..1 MS
  * extension[recordingHospital] 1..1 MS
  * extension[comments] 0..1 MS

