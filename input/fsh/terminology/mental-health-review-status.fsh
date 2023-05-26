CodeSystem:  NZCentralRegionMentalHealthReviewStatusCodeSystem
Id: nzcr-mental-health-review-status-cs
Title: "NZ Central Region - MentalHealthReviewStatus Code System"
Description:  "MentalHealthReviewStatus codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionMentalHealthReviewStatusCS
* ^experimental = false
* ^caseSensitive = true

* #R02  "Not in pat interest"
* #R03  "Not recorded"
* #R04  "Not reas practical"
* #R05  "Yes"


ValueSet: NZCentralRegionMentalHealthReviewStatusValueSet
Id: nzcr-mental-health-review-status-vs
Title: "NZ Central Region - MentalHealthReviewStatus Value Set"
Description:  "MentalHealthReviewStatus codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionMentalHealthReviewStatusVS
* ^experimental = false

* include codes from system nzcr-mental-health-review-status-cs
