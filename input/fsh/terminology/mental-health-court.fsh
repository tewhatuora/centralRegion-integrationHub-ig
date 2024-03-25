CodeSystem:  NZCentralRegionMentalHealthCourtTypeCodeSystem
Id: nzcr-mental-health-court-type-cs
Title: "NZ Central Region - Mental Health Court Type Code System"
Description:  "Mental Health Court Type identification codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionMentalHealthCourtTypeCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #R01 "District Court"
* #R02 "Familty Court"
* #R03 "High Court"



ValueSet: NZCentralRegionMentalHealthCourtTypeValueSet
Id: nzcr-mental-health-court-type-vs
Title: "NZ Central Region - Mental Health Court Type Value Set"
Description:  "Mental Health Court Type identification codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionMentalHealthCourtTypeVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-mental-health-court-type-cs
