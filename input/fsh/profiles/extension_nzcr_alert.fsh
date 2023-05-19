Extension: NZCentralRegionAlert
Id: nzcr-alert
Title: "NZ Central Region Alert"
Description: "Complex extension recording meta data about all alerts, on who recorded the
[Flag](./StructureDefinition-NZCentralRegionFlag.html) 
and [AllergyIntolerance](./StructureDefinition-NZCentralRegionAllergyIntolerance.html) flavours of Alert and when."

* ^url = $NZCentralRegionAlert
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Flag"
* ^context[+].type = #element
* ^context[=].expression = "AllergyIntolerance"

* extension contains
    severityLevel 0..1 MS and
    allergyReaction 0..1 MS and
    inactiveDate 0..1 MS and
    reviewDate 0..1 MS and
    lastUpdatedBy 0..1 MS and
    lastUpdatedDateTime 0..1 MS and
    recordingHospital 0..1 MS and
    comments 0..1 MS

* extension[severityLevel] ^definition = "Severity Level in range 0-9"
* extension[severityLevel] ^short = "Severity Level in range 0-9"
* extension[severityLevel].value[x] only integer
* extension[severityLevel].value[x] 1..1
* extension[severityLevel].value[x] ^minValueInteger = 0
* extension[severityLevel].value[x] ^maxValueInteger = 9

* extension[allergyReaction] ^definition = "Allergy Reaction"
* extension[allergyReaction] ^short = "Allergy Reaction"
* extension[allergyReaction].value[x] only Coding
* extension[allergyReaction].value[x] 1..1
* extension[allergyReaction].value[x] from nzcr-allergy-reaction-vs (required)

* extension[inactiveDate] ^definition = "When will this alert be made inactive"
* extension[inactiveDate] ^short = "When will this alert be next reviewed?"
* extension[inactiveDate].value[x] only date
* extension[inactiveDate].value[x] 1..1

* extension[reviewDate] ^definition = "When is this alert to be next reviewed?"
* extension[reviewDate] ^short = "When is this alert to be next reviewed?"
* extension[reviewDate].value[x] only date
* extension[reviewDate].value[x] 1..1

* extension[lastUpdatedBy] ^definition = "Who has updated the alert"
* extension[lastUpdatedBy] ^short = "Who has updated the alert"
* extension[lastUpdatedBy].value[x] only string
* extension[lastUpdatedBy].value[x] 1..1

* extension[lastUpdatedDateTime] ^definition = "When was the alert last updated"
* extension[lastUpdatedDateTime] ^short = "When was the alert last updated"
* extension[lastUpdatedDateTime].value[x] only dateTime
* extension[lastUpdatedDateTime].value[x] 1..1

* extension[recordingHospital] ^definition = "Where was the alert recorded?"
* extension[recordingHospital] ^short = "Where was the alert recorded?"
* extension[recordingHospital].value[x] only Coding
* extension[recordingHospital].value[x] 1..1
* extension[recordingHospital].value[x] from nzcr-hospital-code-vs (required)

* extension[comments] ^definition = "Free text comments"
* extension[comments] ^short = "Free text comments"
* extension[comments].value[x] only string
* extension[comments].value[x] 1..1
