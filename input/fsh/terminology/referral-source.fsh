CodeSystem:  NZCentralRegionReferralSourceCodeSystem
Id: nzcr-referral-source-cs
Title: "NZ Central Region - Referral Source Code System"
Description:  "Referral Source codes; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralSourceCS
* ^experimental = false
* ^caseSensitive = true

* #M01 "Extramural"
* #M02 "Child Health Hub"
* #R01 "After-hours med cent"
* #R02 "Oranga Tamariki"
* #R03 "Community Health Srv"
* #R04 "Court/Police/Prison"
* #R05 "Dentist"
* #R06 "Education sector"
* #R07 "Emergency Dept."
* #R08 "General practitioner"
* #R09 "Allied health"
* #R10 "Midwife"
* #R11 "Relative"
* #R12 "Other hospital"
* #R13 "Outside agencies"
* #R14 "Plunket"
* #R15 "Police"
* #R16 "Public Health"
* #R17 "Self referral"
* #R18 "Unknown"
* #R19 "Optometrist"
* #R20 "Outpatient clinic"
* #R21 "ServCo-Ord/NeedsAss"
* #R22 "Internal referral"
* #R23 "Specialist (Non-DHB)"
* #R24 "MH community"
* #R25 "MH other"
* #R26 "Ambulance"
* #R27 "Caregiver"
* #R28 "MH Phone line"
* #R29 "Older Persons Com MH"
* #R30 "Corrections"
* #R31 "Court Liaison"
* #R32 "Forensic Community"
* #R33 "Justice"
* #W01 "Nurse"


ValueSet: NZCentralRegionReferralSourceValueSet
Id: nzcr-referral-source-vs
Title: "NZ Central Region - Referral Source Value Set"
Description:  "Referral Source codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralSourceVS
* ^experimental = false

* include codes from system nzcr-referral-source-cs
