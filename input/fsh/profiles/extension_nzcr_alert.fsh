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
    recordingHospital 1..1 MS and
    comments 0..1 MS

* extension
  * ^definition = "Container holding the individual elements of the Alert extension."
  * ^short = "Container holding the individual elements of the Alert extension."

// TODO: - Regional message spec says integer in range 0..9 - but samples have 'W' and 'S' values
* extension[severityLevel]
  * ^definition = "Severity Level in range 0-9 for Allergy/Intolerance; 'W' for Alert/Flag"
  * ^short = "Severity Level in range 0-9 for Allergy/Intolerance; 'W' for Alert/Flag"
  * value[x] 1..1
  * value[x] only string
  // * value[x] only integer
  // * valueInteger ^minValueInteger = 0
  // * valueInteger ^maxValueInteger = 9
  * id 0..0

* extension[allergyReaction]
  * ^definition = "Allergy Reaction"
  * ^short = "Allergy Reaction"
  * value[x] only Coding
  * value[x] from nzcr-allergy-reaction-vs (required)
  * valueCoding 1..1
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* extension[inactiveDate]
  * ^definition = "When will/did this alert stop being active?"
  * ^short = "When will/did this alert stop being active?"
  * value[x] only date
  * value[x] 1..1
  * id 0..0

* extension[reviewDate]
  * ^definition = "When is this alert to be next reviewed?"
  * ^short = "When is this alert to be next reviewed?"
  * value[x] only date
  * value[x] 1..1
  * id 0..0

* extension[lastUpdatedBy]
  * ^definition = "Who has updated the alert, not usually the authorising clinician"
  * ^short = "Who has updated the alert? (Not usually the authorising clinician)"
  * value[x] only string
  * value[x] 1..1
  * id 0..0

* extension[lastUpdatedDateTime]
  * ^definition = "When was the alert last updated"
  * ^short = "When was the alert last updated"
  * value[x] only dateTime
  * value[x] 1..1
  * id 0..0

* extension[recordingHospital]
  * ^definition = "Which hospital recorded the alert?"
  * ^short = "Which hospital recorded the alert?"
  * value[x] only Coding
  * value[x] from nzcr-hospital-code-vs (required)
  * valueCoding 1..1
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* extension[comments]
  * ^definition = "Free text comments"
  * ^short = "Free text comments"
  * value[x] only string
  * value[x] 1..1
  * id 0..0

* id 0..0
