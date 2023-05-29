CodeSystem:  NZCentralRegionMentalHealthReviewLocationCodeSystem
Id: nzcr-mental-health-review-location-code-cs
Title: "NZ Central Region - Mental Health Review Location Code System"
Description:  "Mental Health Review Location identification codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionMentalHealthReviewLocationCS
* ^experimental = false
* ^caseSensitive = true

* #RLOC "Review Location"


ValueSet: NZCentralRegionMentalHealthReviewLocationValueSet
Id: nzcr-mental-health-review-location-vs
Title: "NZ Central Region - Mental Health Review Location Value Set"
Description:  "Mental Health Review Location identification codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionMentalHealthReviewLocationVS
* ^experimental = false

* include codes from system nzcr-hospital-code-cs
* include codes from system nzcr-mental-health-review-location-code-cs
