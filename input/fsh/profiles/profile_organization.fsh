// Organization profile for Central Region
Profile: NZCentralRegionOrganization
Parent: $NZBaseOrganization
Description: "Organization resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint

* implicitRules 0..0
* language 0..0
* contained 0..0
* active 0..0 MS

* identifier 1..* MS
* name 1..1 MS

// A whole bunch of fields we can't populate
* type 0..0
* alias 0..0
* telecom 0..0
* address 0..0
* partOf 0..0
* contact 0..0

// Not using any of the NZBase extensions (for now)
* extension[established] 0..0
* extension[funded-programme] 0..0

// We have a standard set of fields in all Resource.meta blocks
* meta insert ResourceMetaFields
