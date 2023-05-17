Extension: NZCentralRegionAllergyAlert
Id: nzcr-allergy-alert
Title: "NZ Central Region Allergy/Alert"
Description: "NZ Residency status"

* ^url = $NZCentralRegionAllergyAlert
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Flag"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance"


* extension contains

    severityLevel 0..1 and
    allergyReaction 0..1 and
    reviewDate 0..1 and
    inactiveDate 0..1 and
    lastUpdatedBy 0..1 and
    lastUpdatedDateTime 0..1 and
    recordingHospital 0..1 and
    comments 0..1

* extension[severityLevel] ^definition = "Severity Level in range 0-9"
* extension[severityLevel].value[x] only integer
* extension[severityLevel].valueInteger ^minValueInteger = 0
* extension[severityLevel].valueInteger ^maxValueInteger = 9

* extension[allergyReaction] ^definition = "Allergy Reaction"
* extension[allergyReaction].value[x] only CodeableConcept
* extension[allergyReaction].valueCodeableConcept from $NZCentralRegionAllergyReactionVS (required)

* extension[reviewDate] ^definition = "Review Date"
* extension[reviewDate].value[x] only date

* extension[inactiveDate] ^definition = "Inactive Date"
* extension[inactiveDate].value[x] only date
