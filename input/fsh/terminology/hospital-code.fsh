CodeSystem:  NZCentralRegionHospitalCodeSystem
Id: nzcr-hospital-code-cs
Title: "NZ Central Region - Hospital Code System"
Description:  "Hospital identification codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionHospitalCS
* ^experimental = false
* ^caseSensitive = true

* #PNH "Palmerston North Hospital"


ValueSet: NZCentralRegionHospitalValueSet
Id: nzcr-hospital-code-vs
Title: "NZ Central Region - Hospital Value Set"
Description:  "Hospital identification codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionHospitalVS
* ^experimental = false

* include codes from system nzcr-hospital-code-cs
