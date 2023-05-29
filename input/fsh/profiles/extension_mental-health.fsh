Extension: NZCentralRegionMentalHealth
Id: nzcr-mental-health
Title: "NZ Central Region Mental Health"
Description: "Complex extension recording meta data about patient's mental health, particularly legal status"

* ^url = $NZCentralRegionMentalHealth
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "ClinicalImpression"

* extension contains
    legalStatus 0..1 MS and
    reviewStatus 0..1 MS and
    startDateTime 0..1 MS and
    endDateTime 0..1 MS and
    location 0..1 MS and
    reminderDate 0..1 MS and
    addedBy 0..1 MS and
    addedDateTime 0..1 MS and
    lastUpdatedBy 0..1 MS and
    lastUpdatedDateTime 0..1 MS and
    supplementaryLegalStatus 0..1 MS and
    supplementaryLegalStatusDate 0..1 MS and
    reviewDate 0..1 MS and
    courtNoticeSentDate 0..1 MS and
    tribunalDate 0..1 MS and
    courtLodgedDate 0..1 MS and
    courtType 0..1 MS


* extension
  * ^definition = "Container holding the individual elements of the Patient's mental health status."
  * ^short = "Container holding the individual elements of the Patient's mental health status."

* extension[legalStatus]
  * ^definition = "Mental Health Legal Status (at the time of the review)"
  * ^short = "Mental Health Legal Status"
  * value[x] only Coding
  * value[x] from nzcr-mental-health-legal-status-vs (required)
  * value[x] 1..1 MS
    * version 0..0
    * userSelected 0..0
    * extension 0..0
    * id 0..0
  * id 0..0

* extension[reviewStatus]
  * ^definition = "Mental Health Review Status (Section 7A Consultation)"
  * ^short = "Mental Health Review Status"
  * value[x] only Coding
  * value[x] from nzcr-mental-health-review-status-vs (required)
  * value[x] 1..1 MS
    * version 0..0
    * userSelected 0..0
    * extension 0..0
    * id 0..0
  * id 0..0

* extension[startDateTime]
  * ^definition = "Mental Health Legal Status start dateTime"
  * ^short = "Mental health legal status start dateTime "
  * value[x] only dateTime
  * id 0..0

* extension[endDateTime]
  * ^definition = "Mental Health Legal Status end dateTime"
  * ^short = "Mental health legal status end dateTime "
  * value[x] only dateTime
  * id 0..0

* extension[location]
  * ^definition = "Mental Health Legal Status end dateTime"
  * ^short = "Mental health legal status end dateTime "
  * value[x] only Coding
  * value[x] from nzcr-mental-health-review-location-vs (required)
  * value[x] 1..1 MS
    * version 0..0
    * userSelected 0..0
    * extension 0..0
    * id 0..0
  * id 0..0

* extension[reviewDate]
  * ^definition = "Mental Health Legal Status review date"
  * ^short = "Mental health legal status review date"
  * value[x] only date
  * id 0..0

* extension[reminderDate]
  * ^definition = "Mental Health Legal Status reminder date"
  * ^short = "Mental health legal status reminder date"
  * value[x] only date
  * id 0..0

* extension[addedBy]
  * ^definition = "Who added the review, not usually the assesing clinician"
  * ^short = "Who added the review? (Not usually the assessing clinician)"
  * value[x] only string
  * value[x] 1..1
  * id 0..0

* extension[addedDateTime]
  * ^definition = "When was the review first added?"
  * ^short = "When was the review first added?"
  * value[x] only dateTime
  * value[x] 1..1
  * id 0..0

* extension[lastUpdatedBy]
  * ^definition = "Who has updated the review, not usually the assesing clinician"
  * ^short = "Who has updated the review? (Not usually the assessing clinician)"
  * value[x] only string
  * value[x] 1..1
  * id 0..0

* extension[lastUpdatedDateTime]
  * ^definition = "When was the review last updated"
  * ^short = "When was the review last updated"
  * value[x] only dateTime
  * value[x] 1..1
  * id 0..0

* extension[supplementaryLegalStatus]
  * ^definition = "Mental Health Supplementary Legal Status (at the time of the review)"
  * ^short = "Mental Health Supplmentary Legal Status"
  * value[x] only Coding
  * value[x] from nzcr-mental-health-legal-status-vs (required)
  * value[x] 1..1 MS
    * version 0..0
    * userSelected 0..0
    * extension 0..0
    * id 0..0
  * id 0..0

* extension[supplementaryLegalStatusDate]
  * ^definition = "Mental Health Date of Supplementary Legal Status"
  * ^short = "Mental health date of supplementary legal status"
  * value[x] only date
  * id 0..0

* extension[courtNoticeSentDate]
  * ^definition = "Mental Health Legal Status court notice sent date"
  * ^short = "Mental health legal status court notice sent date"
  * value[x] only date
  * id 0..0

* extension[tribunalDate]
  * ^definition = "Mental Health Legal Status tribunal date"
  * ^short = "Mental health legal status tribunal date"
  * value[x] only date
  * id 0..0

* extension[courtLodgedDate]
  * ^definition = "Mental Health Legal Status court lodged date"
  * ^short = "Mental health legal status court lodged date"
  * value[x] only date
  * id 0..0

* extension[courtType]
  * ^definition = "Mental Health Legal Status Court Type"
  * ^short = "Mental Health Supplmentary Legal Status Court Type"
  * value[x] only Coding
  * value[x] from nzcr-mental-health-court-type-vs (required)
  * value[x] 1..1 MS
    * version 0..0
    * userSelected 0..0
    * extension 0..0
    * id 0..0
  * id 0..0

* id 0..0
