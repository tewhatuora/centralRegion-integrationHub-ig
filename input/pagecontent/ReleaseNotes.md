
Change history for this FHIR Implementation Guide is as follows:
### v1.0.2 
*  Rules requiring multiple coding entries on `Flag.category`, `Patient.extension[ethnicity]` etc are done using array slicing rather than [FHIR AdditionalBinding extension](https://build.fhir.org/ig/FHIR/fhir-tools-ig/StructureDefinition-additional-binding.html).   This means the original ValueSet bindings are removed.

### v1.0.1
We turned on FHIR validation, which required the following fixes in the ImplementationGuide:
* `Flag.extension[alert].extension[allergyReaction]` changed from `valueCoding` to `valueCodeableConcept` 
* `Flag.extension[alert].extension[recordingHospital]` changed from `valueCoding` to `valueCodeableConcept` 
* `Flag.category` has two codings 'https://standards.digital.health.nz/ns/central-region/alert-category' and 'http://terminology.hl7.org/CodeSystem/flag-category'
* `AllergyIntolerance.note` is optional, it may not be populated in `ZAL.14`
* `AllergyIntolerance.extension[severityLevel]` is optional, it may not be populated in `ZAL.6`
* Added numeric codes for Hospitals from [Te Whatu Ora's Facility Code Tables](https://www.tewhatuora.govt.nz/assets/Our-health-system/Data-and-statistics/Common-code-tables/Facilities20240401.xlsx) to [Hospital Codes](./CodeSystem-nzcr-hospital-code-cs.html) as they are used to identify recording hospital for NHIMWS based alerts.
* Display text for [Alert Category](./CodeSystem-nzcr-alert-category-cs.html) codes now match what actually appears in source HL7 messages.
* Display text for [Referral Status](./CodeSystem-nzcr-referral-status-cs.html) code `#A` is `Accepted` rather than `Active` and now matches what actually appears in source HL7 messages.
* `meta.extension` fields recording the HL7 version number, triggering event/message,  and l4h templates version number are now defined
* `ServiceRequest.identifier.type` is `#FILL` - `Filler Identifier` - denoting that PAS has assigned identifier.
* Added `ServiceRequest.extension[referral].extension[dateReceived]` field to [Referral profile](./StructureDefinition-NZCentralRegionReferral.html).
* Added [Referral Category](./CodeSystem-nzcr-referral-category-cs.html) codes to use in `ServiceRequest.code` when no specific referral type is provided.
* `ServiceRequest.reasonCode` is optional as field `ZXV-7` is optional in the source HL7 messages.
* `ServiceRequest.performer.display`, `ServiceRequest.requestor.display`,  `ServiceRequest.extension[consultingPractitioner].display`, and `ServiceRequest.extension[referringPractice].display` are marked as unused.
* `ClinicalImpression.note` is optional, it may not be populated in `ZLS.10`
* `Patient.extension[ethnicity]`, `Patient.extension[nz-residency].extension[status]`, and `Patient.extension[patient-religion]` all have two bindings, the original from NZBase and a CentralRegion defined alternative which holds the (usually) finer grained original value received from source HL7 message.
* `Patient.address.country` is optional, it may not be populated in `PID.11.6`
* `Patient.address.extension[domicile-code]` is optional, it may not be populated in `PID.12` 

### v1.0.0
* Changed status of all the CodeSystems and ValueSets to `active` and published as the first edition.

### v0.7.1
* Added [Referral Status](./CodeSystem-nzcr-referral-status-cs.html) code system so that we can include raw referral Priority and Status values in referrals.
* Added [Alert Category](./ConceptMap-nzcr-flag-category-map.html) concept map so that we can map WebPAS alert categories to appropriate FHIR Flag categories.

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
