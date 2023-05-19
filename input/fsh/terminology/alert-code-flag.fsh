CodeSystem:  NZCentralRegionFlagAlertCodeNHIMWSCodeSystem
Id: nzcr-flag-alert-code-nhimws-cs
Title: "NZ Central Region - Flag Alert Codes (NHIMWS)"
Description:  "H2 (medical condition) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeNHIMWSCS
* ^experimental = false
* ^caseSensitive = true




CodeSystem:  NZCentralRegionFlagAlertCodeMCCodeSystem
Id: nzcr-flag-alert-code-mc-cs
Title: "NZ Central Region - Flag Alert Codes (MC)"
Description:  "MC (medical condition) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeMCCS
* ^experimental = false
* ^caseSensitive = true




CodeSystem:  NZCentralRegionFlagAlertCodeMACodeSystem
Id: nzcr-flag-alert-code-ma-cs
Title: "NZ Central Region - Flag Alert Codes (MA)"
Description:  "MA (medical condition) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeMACS
* ^experimental = false
* ^caseSensitive = true




CodeSystem:  NZCentralRegionFlagAlertCodeLSCodeSystem
Id: nzcr-flag-alert-code-ls-cs
Title: "NZ Central Region - Flag Alert Codes (LS)"
Description:  "LS (medical condition) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeLSCS
* ^experimental = false
* ^caseSensitive = true




CodeSystem:  NZCentralRegionFlagAlertCodeH2CodeSystem
Id: nzcr-flag-alert-code-h2-cs
Title: "NZ Central Region - Flag Alert Codes (H2)"
Description:  "H2 (medical condition) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

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




CodeSystem:  NZCentralRegionFlagAlertCodeH4CodeSystem
Id: nzcr-flag-alert-code-h4-cs
Title: "NZ Central Region - Flag Alert Codes (H4)"
Description:  "H4 (infection prevention) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeH4CS
* ^experimental = false
* ^caseSensitive = true

* #C01  "CRE"
* #E01  "ESBL Ecoli"
* #E02  "ESBL Kleb pn"
* #E03  "ESBL Other"
* #M01  "MDRO other"
* #M02  "Multi resist MRSA"
* #M03  "MRSA"
* #N01  "Non multi resist MRSA"
* #O01  "Other"
* #R01  "COVID 19"
* #R02  "Symptom watch"
* #R03  "Suspect watch"
* #R04  "suspect case"
* #R05  "Overseastravel"
* #V01  "VRE"



CodeSystem:  NZCentralRegionFlagAlertCodeH5CodeSystem
Id: nzcr-flag-alert-code-h5-cs
Title: "NZ Central Region - Flag Alert Codes (H5)"
Description:  "H5 (situational) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeH5CS
* ^experimental = false
* ^caseSensitive = true

* #C01  "Child abuse"
* #C02  "child at risk"
* #C03  "child protection"
* #D01  "dangerous dogs"
* #D02  "dmestic/IP violence"
* #D03  "don't visit alone"
* #D04  "duplicate NHI"
* #D05  "med run"
* #E01  "elder abuse/neglect"
* #I01  "incorrect NHI"
* #M01  "med run"
* #O01  "other"
* #P01  "protection order"
* #R01  "risk to others/staff"
* #R02  "reserve NHI"


CodeSystem:  NZCentralRegionFlagAlertCodeH6CodeSystem
Id: nzcr-flag-alert-code-h6-cs
Title: "NZ Central Region - Flag Alert Codes (H6)"
Description:  "H6 (transfusion) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeH6CS
* ^experimental = false
* ^caseSensitive = true

* #B01  "blood group antibodies"
* #D01  "difficult cross match"
* #J01  "jehovah's witness"
* #T01  "transfusion reaction"




CodeSystem:  NZCentralRegionFlagAlertCodeH7CodeSystem
Id: nzcr-flag-alert-code-h7-cs
Title: "NZ Central Region - Flag Alert Codes (H7)"
Description:  "H7 (disability) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeH7CS
* ^experimental = false
* ^caseSensitive = true

* #D01  "intellectual disability"
* #D02  "other disability"
* #D03  "physical disability"
* #D04  "MH disability"
* #D05  "sensory disability"
* #D06  "cognitive disability"
* #P01  "parental support required"



CodeSystem:  NZCentralRegionFlagAlertCodeH8CodeSystem
Id: nzcr-flag-alert-code-h8-cs
Title: "NZ Central Region - Flag Alert Codes (H8)"
Description:  "H8 (care plan) alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeH8CS
* ^experimental = false
* ^caseSensitive = true

* #A01  "Advance care plan"
* #E01  "EPOA"
* #F01  "FCT (Cancer)"
* #P01  "PPPR Act"
* #R01  "Renal Dialysis"




ValueSet: NZCentralRegionFlagAlertCodeValueSet
Id: nzcr-flag-alert-code-vs
Title: "NZ Central Region - Flag Alert Code Value Set"
Description:  "Alert codes ex. WebPAS in NZ Central Region, that appear in Flag resource"

* ^url = $NZCentralRegionFlagAlertCodeVS
* ^experimental = false

* include codes from system nzcr-flag-alert-code-nhimws-cs
* include codes from system nzcr-flag-alert-code-mc-cs
* include codes from system nzcr-flag-alert-code-ma-cs
* include codes from system nzcr-flag-alert-code-ls-cs
* include codes from system nzcr-flag-alert-code-h2-cs
* include codes from system nzcr-flag-alert-code-h4-cs
* include codes from system nzcr-flag-alert-code-h5-cs
* include codes from system nzcr-flag-alert-code-h6-cs
* include codes from system nzcr-flag-alert-code-h7-cs
* include codes from system nzcr-flag-alert-code-h8-cs
