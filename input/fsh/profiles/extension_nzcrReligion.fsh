//
///   We gotta do our own CentralRegion edition allowing multiple codings...
//

Extension: NZCentralRegionReligion
Id: nzcr-religion
Title: "Religious Affiliation (Central Region Edition)"
Description: "Patient religious affiliation extension, permits multiple codings from different CodeSystems"

* ^url = $NZCentralRegionReligion
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from nzcr-combined-religion-vs (required)
