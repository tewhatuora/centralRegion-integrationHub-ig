// Practitioner profile for Central Region
Profile: NZCentralRegionPractitioner
Parent: $NZBasePractitioner
Description: "Practitioner resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint

* implicitRules 0..0
* language 0..0
* contained 0..0
* active 0..0 MS

// We're not using any of the NZ Base extensions
* extension[death-date] 0..0
* extension[educational-qualification] 0..0
* extension[ethnicity] 0..0
* extension[iwi] 0..0

* identifier 1..* MS

* name 1..* MS
  * use 1..1 MS
    * ^short = "official | nickname"
  * text 1..1 MS
  * family 1..1 MS
  * given MS
  * prefix MS
  * suffix 0..0
  * extension 0..0
  * id 0..0


// A whole bunch of fields we can't populate
* address 0..0
* telecom 0..0
* gender 0..0
* birthDate 0..0
* photo 0..0
* qualification 0..0
* communication 0..0

* meta.extension contains nzcr-hl7v2-message named hl7v2Message 1..1 MS
