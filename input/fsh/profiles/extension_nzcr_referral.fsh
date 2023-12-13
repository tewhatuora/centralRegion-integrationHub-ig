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
    consultingPractitioner 0..* MS and
    preferredSite 0..1 MS and
    referralSource 0..1 MS and
    referringPractice 0..1 MS and
    healthPurchaser 0..1 MS and
    clinicType 0..1 MS and
    lastUpdated 0..1 MS and
    informGP 0..1 MS and
    webPASPriority 0..1 MS and
    webPASStatus 0..1 MS
   
* extension
  * ^definition = "Container holding the individual elements of the Referral extension."
  * ^short = "Container holding the individual elements of the Referral extension."

* extension[consultingPractitioner]
  * ^definition = "The consulting doctor(s) or Responsible HCP for this visit or Referral."
  * ^short = "Consultant"
  * value[x] only Reference
    * identifier 0..1 MS
      * use 1..1 MS
      * system 1..1 MS
      * system = $NZCentralRegionPASPractitioner
      * type 1..1 MS
        * coding MS  
          * code 1..1 MS
          * code = #LR
          * system 1..1 MS 
          * system = $HL7IdentifierTypeCS
          * display 1..1 MS
          * display = "Local Registry ID"
          * version 0..0
          * userSelected 0..0
          * extension 0..0
          * id 0..0
        * extension 0..0
        * id 0..0
        * text 0..0
      * period 0..0     // Data not available
      * assigner 0..0   // Data not available
      * extension 0..0
      * id 0..0
    * display 1..1 MS
    * extension 0..0
    * id 0..0

* extension[preferredSite]
  * ^definition = "Which site does patient prefer to attend the referral?"
  * ^short = "Which hospital / clinic does patient prefer to attend?"
  * value[x] only Coding
  * value[x] from nzcr-referral-site-vs (required)   // TODO - track down appropriate referral site codes
  * valueCoding 1..1 MS
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* extension[referralSource]
  * ^definition = "Which organisation hospital department made the referral? Not to be confused with requestor which is the actual clinician."
  * ^short = "Which organisation / hospital department made the referral?"
  * value[x] only Coding
  * value[x] from $NZCentralRegionReferralSourceVS (required)
  * valueCoding 1..1 MS
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* extension[referringPractice]
  * ^definition = "When source is General Practice, which medical practice (or other DHB) made the referral?"
  * ^short = "Which medical practice made the referral?"
  * value[x] only Reference
  * valueReference
    * type 1..1 MS
    * type = "Organisation"
      * ^short = "Medical Practice is an Organisation"
    * reference 0..1 MS
    * identifier 0..1 MS
      * use 1..1 MS
      * system 1..1 MS
      * system = $NZCentralRegionPASPractice
      * type 1..1 MS
        * coding MS  
          * code 1..1 MS
          * code = #LR
          * system 1..1 MS 
          * system = $HL7IdentifierTypeCS
          * display 1..1 MS
          * display = "Local Registry ID"
          * version 0..0
          * userSelected 0..0
          * extension 0..0
          * id 0..0
        * extension 0..0
        * id 0..0
        * text 0..0
      * period 0..0     // Data not available
      * assigner 0..0   // Data not available
      * extension 0..0
      * id 0..0
    * display 1..1 MS
    * extension 0..0
    * id 0..0

* extension[healthPurchaser]
  * ^definition = "Which funding source is paying for the referral?"
  * ^short = "Which funding source is paying for the referral?"
  * value[x] only Coding
  * value[x] from $NZCentralRegionHealthPurchaserVS (required)    // TODO - track down appropriate health purchaser codes
  * valueCoding 1..1
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* extension[clinicType]
  * ^definition = "Which clinic run by the Department/Location is the referral for?"
  * ^short = "Which clinic is the referral to?"
  * value[x] only Coding
  * value[x] from $NZCentralRegionClinicVS (required)
  * valueCoding 1..1
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* extension[lastUpdated]
  * ^definition = "Date and time the referral was last updated in the originating system?"
  * ^short = "When was the referral last updated in the originating system?"
  * value[x] only dateTime
  * id 0..0

* extension[informGP]
  * ^definition = "Is Patient's GP to be informed about referral?"
  * ^short = "Is Patient's GP to be informed about referral?"
  * value[x] only boolean
  * id 0..0

* extension[webPASPriority]
  * ^definition = "What was the original raw priority setting on the referral?"
  * ^short = "Raw referral priority?"
  * value[x] only Coding
  * value[x] from $NZCentralRegionReferralPriorityVS (required)
  * valueCoding 1..1
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0

* extension[webPASStatus]
  * ^definition = "What was the original raw status setting on the referral?"
  * ^short = "Raw referral status?"
  * value[x] only Coding
  * value[x] from $NZCentralRegionReferralStatusVS (required)
  * valueCoding 1..1
    * version 0..0        // not versioned
    * userSelected 0..0   // not used
    * extension 0..0
    * id 0..0  
  * id 0..0
  
* id 0..0
