// Practitioner profile for Central Region
Profile: NZCentralRegionPractitioner
Parent: $NZBasePractitioner
Description: "Practitioner resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint
* id 0..0

* extension contains 
    NZCentralRegionHL7v2Message named hl7v2Message 1..1 MS
