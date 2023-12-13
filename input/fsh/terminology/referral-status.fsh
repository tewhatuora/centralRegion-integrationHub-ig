CodeSystem:  NZCentralRegionReferralStatusCodeSystem
Id: nzcr-referral-status-cs
Title: "NZ Central Region - Referral Status Code System"
Description:  "Referral Status codes; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralStatusCS
* ^experimental = false
* ^caseSensitive = true

* #A	"Active"
* #E	"Expired"
* #D	"Draft"
* #P	"Pending"
* #R	"Revoked"


ValueSet: NZCentralRegionReferralStatusValueSet
Id: nzcr-referral-status-vs
Title: "NZ Central Region - Referral Status Value Set"
Description:  "Referral Status codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionReferralStatusVS
* ^experimental = false

* include codes from system nzcr-referral-status-cs
