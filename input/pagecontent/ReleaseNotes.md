
Change history for this FHIR Implementation Guide is as follows: 
### v0.7.1
* Added [Referral Status]() code system so that we can include raw referral Priority and Status values in referrals
* 

### v0.7.0
10-Nov-2023
* Added [Organization](./StructureDefinition-NZCentralRegionOrganization.html) to the supported resources data model to hold
  `referringPractice` field from Referrals.

* Adjustments of which alert type/category values in field `ZAL-2` denote AllergyIntolerance, and which denote Flag.
  Alert category codes A3, A4, H1 & H3 map to `AllergyIntolerance` all other allert category codes, including DA & FA map to `Flag`

 * Alert type/category codes NHIMWS, MA and MC are non-coded alerts; the matching Alert field in `ZAL-3` is free text;
   therefore code systems `nzcr-flag-alert-code-nhimws-cs`, `nzcr-flag-alert-code-ma-cs` and `nzcr-flag-alert-code-mc-cs` have been removed


* Inclusion of the follwing Flag Alert type code systems:
  * Alert category DA now has 2 codes `S00	General Surgery` and `S75	Vascular Surgery`
  * Alert category H2 now has 14 codes from `A01 - Adrenal insufficienc` to `T01 - Transplant patient`
  * Alert category H4 now has 16 codes from `C01 - CRE` to `V01 - CVRE`
  * Alert category H5 now has 16 codes from `C01 - Child abuse` to `R02 - Reserve for NHI`
  * Alert category H6 now has 4 codes from `V01 - Blood group antibodi` to `T01 - Transfusion reaction`
  * Alert category H7 now has 7 codes from `D01 - Intellectual disabil` to `P01 - ParentalSupport reqd`
  * Alert category H8 now has 6 codes from `A01 - Advance care plan` to `T01 - Treat/managt plan`
  * Alert category LS now has 86 codes from `R01 - Informal patient` to `R87 - MHA S30 1 yr CTO`

* Inclusion of the following Allergy Alert type code systems:
  * Allergy category H1 now has 316 codes ranging from `A01 - ACE Inhibitors` to `Z - Zinc`
  * Allergy category H3 now has 24 codes ranginge from `A01 - Alcohol Wipes` to `W01 - Wheat/gluten`
  * Alert categories A3 & A4  now have 2 codes `R03 - Unknown` and `R05 - Medication`

* Valid Referral Type codes are union of RI and WU type codes


### v0.6.1
25-Oct-2023

* Added [HL7 v2 Referral Priority](https://terminology.hl7.org/CodeSystem-v2-0280.html) code system to [Referral Priority Value Set](./ValueSet-nzcr-referral-priority-vs.html) and the matching [Concept Map](./ConceptMap-nzcr-referral-priority-fhir-map.html) as we have codes from multiple systems in use.

* Removed `category` field from Referral ServiceRequest mapping; category is implied by the use of Referral profile.

* Added `consultingPractitioner` field to `referral` extension of Referral profile; populated from `PV1-9`

### v0.6.0
29-Sep-2023

* Added [Allergy Reaction](./ValueSet-nzcr-allergy-reaction-vs.html) code system, to record the nature of allergic reaction
  along with concept maps to provide suitable FHIR code fields:

  * [Allergy Category](./ConceptMap-nzcr-allergy-category-map.html) concept map for [AllergyIntolerance Category](http://hl7.org/fhir/R4/valueset-allergy-intolerance-category.html) codes
  * [Allergy Type](./ConceptMap-nzcr-allergy-type-map.html) concept map for [AllergyIntolerance Type](http://hl7.org/fhir/R4/valueset-allergy-intolerance-type.html)
  * [Allergy Criticality](./ConceptMap-nzcr-allergy-criticality-map.html) concept map for [AllergyIntolerance Criticality](http://hl7.org/fhir/R4/valueset-allergy-intolerance-criticality.html)

* Switched from using the `ClinicalImpression.summary` field to using the `ClinicalImpression.note` field to hold the comments recorded with the alert.

* Added [Developer Guide](./DeveloperGuide.html) outlining the process for provisioning API clients, and obtaining an OAuth access token
  to authenticate subsequent FHIR API calls.

* Added this release history page

### v0.5.0

* The first of the almost useful editions of the Integration Guide.
