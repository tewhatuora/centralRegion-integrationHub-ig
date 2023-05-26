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
    legalStatus 1..1 MS and
    reviewStatus 1..1 MS

* extension
  * ^definition = "Container holding the individual elements of the Patient's mental health status."
  * ^short = "Container holding the individual elements of the Patient's mental health status."

* extension[legalStatus]
  * ^definition = "Mental Health Legal Status (at the time of the review)"
  * ^short = "Mental Health Legal Status"
  * value[x] only code
  * value[x] from nzcr-mental-health-legal-status-vs (required)

* extension[reviewStatus]
  * ^definition = "Mental Health Review Status (Section 7A Consultation)"
  * ^short = "Mental Health Review Status"
  * value[x] only code
  * value[x] from nzcr-mental-health-review-status-vs (required)

* id 0..0
