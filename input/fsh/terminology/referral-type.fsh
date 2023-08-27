CodeSystem:  NZCentralRegionReferralTypeCodeSystem
Id: nzcr-referral-type-cs
Title: "NZ Central Region - Referral Type Code System"
Description:  "Referral Type codes; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralTypeCS
* ^experimental = false
* ^caseSensitive = true

* #R01 "Advice"
* #R02 "Allied health"
* #R03 "Assessment"
* #R04 "Cross consulting"
* #R05 "Follow Up"
* #R06 "FSA"
* #R07 "FSA presenting"
* #R08 "Pre-assessment"
* #R09 "Procedure"
* #R10 "Second opinion"
* #R11 "Spec Auth approval"
* #R12 "Hosp-referred test"
* #R13 "Cmty-referred test"
* #R14 "Treatment"
* #R15 "Ward follow-up"
* #R16 "Re-Referral"
* #R17 "Medication review"
* #R18 "Data migration"
* #R19 "Maori Health"


ValueSet: NZCentralRegionReferralTypeValueSet
Id: nzcr-referral-type-vs
Title: "NZ Central Region - Referral Type Value Set"
Description:  "Referral Type codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralTypeVS
* ^experimental = false

* include codes from system nzcr-referral-type-cs
