CodeSystem:  NZCentralRegionReferralStatusCodeSystem
Id: nzcr-referral-status-cs
Title: "NZ Central Region - Referral Status Code System"
Description:  "Referral Status codes; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralStatusCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #A	"Accepted"        // Sample data from DIT1_webPAS - not Active as in provided codesets
* #E	"Expired"
* #D	"Draft"
* #P	"Pending"
* #R	"Rejected"
* #I    "Inactive"       // Sample data from DIT1_webPAS - new value for 'deleted' referrals

ValueSet: NZCentralRegionReferralStatusValueSet
Id: nzcr-referral-status-vs
Title: "NZ Central Region - Referral Status Value Set"
Description:  "Referral Status codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionReferralStatusVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-referral-status-cs
