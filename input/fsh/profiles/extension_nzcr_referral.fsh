Extension: NZCentralRegionExtensionReferral
Id: nzcr-referral
Title: "NZ Central Region Referral"
Description: "Complex extension recording extra data about referrals"

* ^url = $NZCentralRegionReferral
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"

* extension contains
    preferredSite 0..1 MS and
    referralSource 0..1 MS and
    referringPractice 0..1 MS

* extension
  * ^definition = "Container holding the individual elements of the Referral extension."
  * ^short = "Container holding the individual elements of the Referral extension."

* extension[preferredSite]
  * ^definition = "Which site does patient prefer to attend the referral?"
  * ^short = "Which hospital / clinic does patient prefer to attend?"
  * value[x] only Coding
  * value[x] from nzcr-hospital-code-vs (required)   // TODO - track down appropriate referral site codes
  * valueCoding 1..1
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* extension[referralSource]
  * ^definition = "Which organisation made the referral?"
  * ^short = "Which organisation made the referral?"
  * value[x] only Coding
  * value[x] from $NZCentralRegionReferralSourceCS (required)    // TODO - track down appropriate referral source
  * valueCoding 1..1
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* extension[referringPractice]
  * ^definition = "When source is General Practice, which medical practice made the referral?"
  * ^short = "Which medical practice made the referral?"
  * value[x] only Coding
  * value[x] from $NZCentralRegionReferringPracticeCS (required)    // TODO - track down appropriate referring practice codes
  * valueCoding 1..1
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* id 0..0
