CodeSystem:  NZCentralRegionFlagAlertCodeH2CodeSystem
Id: nzcr-flag-alert-code-h2-code-system
Title: "NZ Central Region - Flag Alert Code (H2) Code System"
Description:  "H2 alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeH2CS
* ^experimental = false
* ^caseSensitive = true

* #A01  "Adrenal insufficiency"
* #A02  "Anaesthetic risk"
* #B01  "Clotting disorder"
* #B02  "Brugada syndrome"
* #D01  "Diabetic Mx plan"
* #D02  "Difficult intub/airw"
* #I01  "Immunosuppressed"
* #K01  "Known hospice/pall"
* #L01  "Lond QT syndrome"
* #M01  "Malig hyperthermia"
* #O01  "Other medical condition"
* #R01  "Respiratory Mx plan"
* #T01  "transplant patient"




ValueSet: NZCentralRegionFlagAlertCodeValueSet
Id: nzcr-flag-alert-code-value-set
Title: "NZ Central Region - Flag Alert Code Value Set"
Description:  "Alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeVS
* ^experimental = false

* include codes from system nzcr-flag-alert-code-h2-code-system
