CodeSystem:  NZCentralRegionReferralSiteCodeSystem
Id: nzcr-referral-site-cs
Title: "NZ Central Region - Referral Site Code System"
Description:  "Referral Preferred Site codes; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralSiteCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #POPD "Palmerston North Outpatients"
* #WMHH "Whanganui Mental Health Hosp"
* #WOPD "Whanganui Outpatients"
* #YOPD "Wairarapa Hospital Outpatients"

ValueSet: NZCentralRegionReferralSiteValueSet
Id: nzcr-referral-site-vs
Title: "NZ Central Region - Referral Site Value Set"
Description:  "Referral Preferred Site codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralSiteVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-referral-site-cs
