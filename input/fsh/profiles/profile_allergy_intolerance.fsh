// AllergyIntolerance profile for Central Region
Profile: NZCentralRegionAllergyIntolerance
Parent: http://hl7.org/fhir/StructureDefinition/AllergyIntolerance
Description: "AllergyIntolerance resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint
* id 0..0

* extension contains 
    NZCentralRegionHL7v2Message named hl7v2Message 1..1 MS
