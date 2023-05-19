// AllergyIntolerance profile for Central Region
Profile: NZCentralRegionAllergyIntolerance
Parent: http://hl7.org/fhir/StructureDefinition/AllergyIntolerance
Description: "AllergyIntolerance resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint
* id 0..0

* extension contains 
    nzcr-hl7v2-message named hl7v2Message 1..1 MS and
    nzcr-alert named allergy-alert 1..1 MS 

* onset[x] only Period or dateTime

* extension[allergy-alert]
  * extension[severityLevel] 0..1 MS
    * extension 0..0
    * id 0..0
  * extension[allergyReaction] 0..1 MS
    * extension 0..0
    * id 0..0
  * extension[reviewDate] 0..1 MS
    * extension 0..0
    * id 0..0
  * extension[lastUpdatedBy] 0..1 MS
    * extension 0..0
    * id 0..0
  * extension[lastUpdatedDateTime] 0..1 MS
    * extension 0..0
    * id 0..0
  * extension[recordingHospital] 0..1 MS
    * extension 0..0
    * id 0..0
  * extension[comments] 0..1 MS
    * extension 0..0
    * id 0..0
  * id 0..0

