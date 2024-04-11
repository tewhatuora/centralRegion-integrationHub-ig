//
///   Stolen from NZBase github repo - as we gotta do our own CentralRegion edition allowing multiple codings...
//

// 
Extension: NZCentralRegionEthnicity
Id: nzcr-ethnicity
Title: "NZ Ethnicity (Central Region Edition)"
Description: """
The ethnic group or groups that a person identifies with or feels they belong to.  Ethnicity is a measure of cultural affiliation as opposed to race, ancestry, nationality or citizen.  Ethnicity is self-perceived and a person can belong to more than one group.

The Stats New Zealand standard can be found [here](http://aria.stats.govt.nz/aria/#ClassificationView:uri=http://stats.govt.nz/cms/ClassificationVersion/YVqOcFHSlguKkT17).
"""
//The Stats New Zealand standard can be found [here](http://aria.stats.govt.nz/aria/#StandardView:uri=http://stats.govt.nz/cms/StatisticalStandard/vv0ovwUoTSSVDhpt).

* ^url = $NZCentralRegionEthnicity
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from nzcr-combined-ethnicity-vs (required)