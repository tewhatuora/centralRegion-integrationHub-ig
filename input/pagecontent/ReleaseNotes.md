Change history for this FHIR Implementation Guide is as follows:
### v1.0.12-rc1
17-Sep-2024
* Added extension field `effectiveDateTime` to [Referral](./StructureDefinition-NZCentralRegionReferral.html)
* Added `S22` for `Protamine` to [Allergy Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
 
### v1.0.11-rc1
11-Sep-2024
* Removing `hl7v2-message` from `meta` on all resources except `Patient` and `ServiceRequest` - it was getting a bit repetitive.
* Field `Patient.contact.relationship` has [extension](./StructureDefinition-nzcr-extn-contact-relationship.html) field to hold original webPAS relationship code.

### v1.0.10-rc1
3-Sep-2024
* Added two search parameters to [Referral](/StructureDefinition-NZCentralRegionReferral.html) allowing API clients to include more resources in the Subscription notification call-back bundle:
  * [referringPractice](./SearchParameter-nzcr-referral-referring-practice.html)
  * [consultingPractitioner](./SearchParameter-nzcr-referral-consulting-practitioner.html)
  
### v1.0.9-rc7
2-Sep-2024
* Added `P36` for `Protamine` to [Allergy Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
* Added `FLOWSTUDS` for `Flow Studies` to [Referral Reason Codes](./CodeSystem-nzcr-referral-reason-cs.html)

### v1.0.9-rc6
21-Aug-2024
* Added `WMHH` for `Whanganui Mental Health Hospital` to [Referral Site Codes](./CodeSystem-nzcr-referral-site-cs.html)
* Added `WOPD` for `Whanganui Outpatients` to [Referral Site Codes](./CodeSystem-nzcr-referral-site-cs.html)
* Added `YOPD` for `Wairarapa Hospital Outpatients` [Referral Site Codes](./CodeSystem-nzcr-referral-site-cs.html)

### v1.0.9-rc5
19-Aug-2024
* Added `Z5` for `Zuclopenthixol` alongside `Z05` to [H1 Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
* Added `P35` for `Perindopril` to [H1 Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
* Added `06` for `Privately funded NZ` alongside `6` to [Referral Health Purchaser](./CodeSystem-nzcr-health-purchaser-cs.html)


### v1.0.9-rc4
13-Aug-2024
* `Patient.communication[].langauge.text` is used to record "Other" language code as ietf language codes don't include an OTHER value.
* `Patient.communication[].preferred` is optional, as it can't be set when language is OTHER.


### v1.0.9-rc2
12-Aug-2024
* Added [Subscription](./StructureDefinition-NZCentralRegionSubscription.html) profile requiring:
  * `Subscription.type` is required and can only be `rest-hook`
  * `Subscription.channel.payload` is required and can only be `application/json` (The field states the mime-type of the payload)
  * `Subscription.extension[subscription-payload-search-criteria].valueString` allows API clients to be notified with whole bundles.
  * `Subscription.channel.extension[subscription-delivery-retry-count].valueString` allows API clients to limit the number of retries a subscription notification
  will conduct, before placing the notification into the Dead Letter Queue.
* Added code `I` for `Inactive` to [ReferralStatus](./CodeSystem-nzcr-referral-status-cs.html) to account for delete referrals received in `REF^I14` messages.
  
### v1.0.9-rc1
5-Aug-2024
* Renamed (the human readable names) of [nzcr-clinic-vs](./ValueSet-nzcr-clinic-vs.html) and [nzcr-clinic-cs](./CodeSystem-nzcr-clinic-cs.html) 
to `ClinicTypeCodeSystem` and `ClinicTypeValueSet` to distinguish `clinicId` field from `clinicType` field.
* Added `ServiceRequest.extension[referral].extension[clinicId]` as a `valueString` extension field to hold the `clinicId` along-side `clinicType`. 
There are more than 1300 unique clinicIds, and they change regularly; so it is not practible to add this as a `valueCoding` field.
* Added `ServiceRequest.extension[referral].extension[healthSpeciality]` to hold required field `PV1-10`. Codings not currently known, so only available as `valueString`
* Added `ServiceRequest.extension[referral].extension[financialClass]` to hold required field `PV1-20`. Codings not currently known, so only available as `valueString`

### v1.0.8-rc4
* Updated [Marital Status ConceptMap](./ConceptMap-nzcr-marital-status-map.html) as some codes in WebPAS do not conform to HL70002 marital status codes table. 
   * code `C` is for `Civil union` and is mapped to `OTH`
   
### v1.0.8-rc3
* Updated [Marital Status ValueSet](./ValueSet-nzcr-marital-status-vs.html) to be defined in terms of base CodeSystems (just in case)
* Updated [Marital Status ConceptMap](./ConceptMap-nzcr-marital-status-map.html) to map all 'informal' marriages to `T` for `Domestic partner` as code `C` for `Common Law` is not available in R4.

### v1.0.8-rc2
* No change to IG - HL7 mapping template change.

### v1.0.8-rc1
* Added SearchParameter `clinicType` on `ServiceRequest`
* Added `Z05` for `Zuclopenthixol` to [H1 Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
* Field `Flag.period` is now optional as very occasionally we don't get given a start date in `ZAL.5` or start date is after end date in `ZAL.9`
* Field `AllergyIntolerance.onset` is now optional as very occaisionally we don't get given a start date in `ZAL.5` or start date is after end date in `ZAL.9`
* Added `OTH` and `UNK` from [Null Flavour](http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NP) to the [Marital Status Value Set](./ValueSet-nzcr-marital-status-vs.html)
* Added [Marital Status ConceptMap](./ConceptMap-nzcr-marital-status-map.html) to map marital status codes from [HL7 v2.4](https://hl7-definition.caristix.com/v2/HL7v2.4/Tables/0002)
* `ClinicalImpression.status` is derived from the legal status startDate (`ZLS-3`) and endDate (`ZLS-4`) fields.
* Fields `Patient.communication.language` and `Patient.maritalStatus` holding multiple codings.
* Updated [Patient with Additional Bindings](./StructureDefinition-NZCentralRegionPatientAdditionalBinding.html) profile to have additional binding on `Patient.maritalStatus`

### v1.0.7-rc11
* Added code `LABOUR` for `Term Labour Assessment` to [Referral Reason](./ValueSet-nzcr-referral-reason-vs.html) codes
* Updated display string for `ietf:bcp:47#cmn` to `Mandarin Chinese`

### v1.0.7-rc10
* No change to IG - HL7 mapping template change.

### v1.0.7-rc9
* Updated rc no to match l4h-templates:
*  - `Flag.extension[recordingHospital]` already allows NP-Not Present value
* Removed Subscription DELETE operation, as it breaks notification engine; please set Subscription.status to `off` when Subscription is no-longer used
* Added value `UNC` for `Unencoded` to [Hospital ValueSet](./ValueSet-nzcr-hospital-code-vs.html) to record codes that are not defined.

### v1.0.7-rc8
* `extension[recordingHospital].coding.display` is now populated and is no longer missing for `NHIMWS`, `MA` and `MC` category Flags

### v1.0.7-rc7
* Some [Hospital Code](./CodeSystem-nzcr-hospital-code-cs.html) values from field `ZAL-13` are not defined; in which case 
the value will be placed in the `text` field, rather than `coding`.
* Added mapping descriptions for:
  * [AllergyIntolerance](StructureDefinition-NZCentralRegionAllergyIntolerance-mappings.html)
    * default values on `type`, `category` and `criticality` fields when field `ZAL-4.1` is missing.
    * `extension[recordingHospital]` can have a simple `text` value when the code in `ZAL-13.1` is unknown.
  * [Flag](StructureDefinition-NZCentralRegionFlag-mappings.html)
    * `extension[allergyReaction]` can be populated for some `Flag` alerts
    * `extension[recordingHospital]` can have a simple `text` value when the code in `ZAL-13.1` is unknown.

### v1.0.7-rc6
* Added documentation of `$trigger-subscription` operation to `Subscription` api endpoint and [developer's guide](./devGuide-Subscriptions.html#manual-subscription-triggering).

### v1.0.7-rc5
* Added code `R42` for `Spiritualist` to [Patient Relgion Codes](./CodeSystem-nzcr-religion-cs.html)

### v1.0.7-rc4
* Updated [Hospital Codes](CodeSystem-nzcr-hospital-code-cs.html) to no-longer be a `fragment`; We shall update the code system as new codes come to light.
* Updated mapping for [Flag Mapping](./StructureDefinition-NZCentralRegionFlag-mappings.html) as
  `status` is derived from `ZAL-5` and `ZAL-9` fields and current dateTime, rather than `ZAL-8`

### v1.0.7-rc3
* Updated mapping for [AllergyIntolerance Mapping](./StructureDefinition-NZCentralRegionAllergyIntolerance-mappings.html) as
  `clinicalStatus` is derived from `ZAL-5` and `ZAL-9` fields and current dateTime, rather than `ZAL-8`

### v1.0.7-rc2
* Re-labelled codes `R86` and `R87` codes, and added codes `R88` and `R89` in the [Mental Health Legal Status](./CodeSystem-nzcr-mental-health-legal-status-cs.html) codes:
  * #R86   "MHA S29 (do not use)"
  * #R87   "MHA S30 (do not use)"
  * #R88   "MHA S29 CTO 12-Month"
  * #R89   "MHA S30 CTO 12-Month"
* Added `R` - `Routine` to  [Referral Priority](./CodeSystem-nzcr-referral-priority-cs.html) codes
* `Flag.extension[flag-alert].extension[allergyReaction]` is optional for `Flag` resource; as it is used by some `H2` Medical Condition alerts.

### v1.0.7-rc1
* `Flag.extension[flag-alert].extension[allergyReaction]` is not populated for `Flag` resource.

### v1.0.6-rc9
* Aded codes to [Mental Health Review Location](./CodeSystem-nzcr-mental-health-review-location-code-cs.html)
  * #M33   "ACT"
  * #M34   "OH"
  * #M28   "Ward 25"
  * #M29   "Ward 26"
  * #YAH   "WR Allied Health Gym"

* Added codes to [H1 Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
  * #A33	"Anaesthetic agent"
  * #A35  "Antiinflammatories"
  * #A36	"Atomoxetine"
  * #A38	"Awaiting CARM reply"
  * #B16	"Benzalkonium"
  * #C51  "Caffeine"
  * #C52  "Cefotaxime"
  * #D19  "Donepezil"
  * #G11	"Gadobutrol"
  * #g12  "GTN spray"
  * #H7	  "Hydroxychloroquine"
  * #L12	"Labetalol"
  * #L13	"Lurasidone"
  * #L15	"Lidocaine/prilocaine"
  * #L17	"Lisinopril"
  * #L18  "Loratadine"
  * #N15  "Neostigmine"
  * #O11	"Ornidazole"
  * #P34  "Patent Blue"
  * #Q07  "QT-prolonging drugs"
  * #s11  "Sulfa drug"
  * #S21  "SSRIs"
  * #s21  "Sotalol"
  * #T26  "Thiazide"
  * #T27  "Tamsulosin"
  * #U1   "Unclear agent"
  * #V09  "Varenicline"



### v1.0.6-rc8
* Added codes to [H1 Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
  * `A34` - `Alcohol contain meds`
  * `A39` - `Adalimumab`
  * `B15` - `Benzydamine`
  * `H08` - `Hyoscine`
  * `L14` - `Lorazepam`
  * `L16` - `Leflunomide`

### v1.0.6-rc7
* Added codes to [H1 Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
* `L18` - `Loratadine`
* `M21` - `Methylphenidate`
* `R09` - `Rosuvastatin`
* `s21` - `Sotalol`

* Added codes to [Patient Relgion](./CodeSystem-nzcr-religion-cs.html)
* `R41` - `Sikh`

* Aded codes to [Mental Health Review Location](./CodeSystem-nzcr-mental-health-review-location-code-cs.html)
* `M30` -  `Ward 27`
* `M37` -  `HOME`

### v1.0.6-rc6
* Added codes to [Rerral Reason](./CodeSystem-nzcr-referral-reason-cs.html) based upon messages from PROD
  * `BPPET` - `Hypertension or PET Assessment`
  * `MOVEMENT` - `Concern with fetal movements`

### v1.0.6-rc5
* Added codes to [Rerral Reason](./CodeSystem-nzcr-referral-reason-cs.html) based upon messages from PROD
  * `ANTENATAL` - `Antenatal`
  * `MATCARE`   - `Maternity Care`

* Added codes to [Referral Priority](./CodeSystem-nzcr-referral-priority-cs.html) codes
  * `NPR` - `Not prioritised`
  * `STP` - `Staged procedure`

* Added codes to the [H1 Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
  * `A37` - `Alteplase`
  * `T28` - `Ticagrelor`

### v1.0.6-rc4
* Updated [Rerral Reason](./CodeSystem-nzcr-referral-reason-cs.html) code system with all of it's correct 745 codes
* Added codes to the [Mental Health Legal Status](./CodeSystem-nzcr-mental-health-legal-status-cs.html) codes.
  * `R75`	-  `MHA S09 DAO notice`
  * `R76`	-  `MHA S11(5)(b)`
  * `R77`	-  `MHA S13(5)(b)`
  * `R78`	-  `MHA S109 Police`
  * `R79`	-  `Notice of death S132`
  * `R80`	-  `Cust Sent S36(2)(b))`
  * `R82`	-  `CPMIP S25(1)a UTST`
  * `R83`	-  `S11(4) Cancel Leave`
  * `R84`	-  `S13(4) Ntce Can Leav`
  * `R85`	-  `S16 Withdrawn`
  * `R86` -  `MHA S29 CTO 12-Month`
* Added codes to the [H4 Alert Codes](./CodeSystem-nzcr-flag-alert-code-h4-cs.html)
  * `B02` - `Brugada syndrome`
* Patient and Subject links in [Flag](./StructureDefinition-NZCentralRegionFlag.html), [AllergyIntolerance](./StructureDefinition-NZCentralRegionAllergyIntolerance.html), [ClinicalImpression](./StructureDefinition-NZCentralRegionClinicalImpression.html) and [ServiceRequest](./StructureDefinition-NZCentralRegionReferral.html) resources can be non-NHI, when there is only a `temp` patient identifier available.
 Added code `IN` for `NZ Indian` to [Level 2 Ethnicity](./CodeSystem-nzcr-ethnicity-level-2-code-system.html) codes
* Patient.extension[nzCitizenship] is optional
* Added field `extension[allergy-alert].extension[webPASCategory]` to [AllergyIntolerance](./StructureDefinition-NZCentralRegionAllergyIntolerance.html) and [Flag](./StructureDefinition-NZCentralRegionFlag.html) resources to hold the original value of field `ZAL.2.1` the alert category.
* Added code `F` for `De Facto` to [Marital Status](./CodeSystem-nzcr-raw-marital-status-cs.html) codes 
* Added code `R40` for `Seventh Day Advents` to [Patient Relgion](./CodeSystem-nzcr-religion-cs.html) codes
* Added codes to the [H1 Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
  * `B13` - `Benzodiazepines`
* Added codes to [Mental Health Review Location](./CodeSystem-nzcr-mental-health-review-location-code-cs.html) codes
  * `M35` for `Levin Police`
  * `M31` for `Star 1` 
  * `M38` for `OTHER`
* Added codes to [Referral Priority](./CodeSystem-nzcr-referral-priority-cs.html) codes
  * `U` for `Urgent`
  * `S` for `Semi-urgent`
* Added 229 codes for all the Private Hospitals, DHB based Mental Health facilities, and many Non-Hospital Mental Health facilites to [Hospital Codes](./ValueSet-nzcr-hospital-code-vs.html) as recording locations for NHIMWS warnings
* Admitted defeat and down-graded [Hospital Codes](./ValueSet-nzcr-hospital-code-vs.html) to `example` in [Flag & AllergyIntolerance](./StructureDefinition-nzcr-alert.html) extension
* Added codes to [H1 Alert Codes](./CodeSystem-nzcr-allergy-alert-code-h1-cs.html)
  * `P33` for `Pregabalin`




### v1.0.5
* Added codes to [Rerral Reason](./CodeSystem-nzcr-referral-reason-cs.html) code system.
  * `AMBBP` for `Ambulatory BP Machine` 
  * `ECV` for `External Cephalic Version`
  * `GENCARD` for `General Cardiology`
  * `PLP` for `Planned Procedure`
  * `CLINIC` for `Antenatal Clinic Obstetric`
* Added codes to [Referral Status](./CodeSystem-nzcr-referral-priority-cs.html) code system
  * `AR` for `Active review`
  * `PLP` for `Planned procedure`
* Field `Patient.active` is now optional, as it is used when `ADT^A40` PatientMerge messages are received.
* Field `ServiceRequest.reasonCode` bound to [Referral Reason](./ValueSet-nzcr-referral-reason-vs.html) value set.
* Field `ServiceRequest.authoredOn` is now optional, as field `ZXV.9` may not be present in source HL7 message.
* Field `ServiceRequest.requester` is now optional, as fields `PV1.8` and `PV1.9` may not be present in source HL7 message.
* Field `ServiceRequest.performer` is now optional, as fields `PV1.7` and `PV1.9` may not be present in source HL7 message.
* Field `ServiceRequest.locationCode` is now optional, as field `ZXV.40` may not be present in source HL7 message.


### v1.0.4
* Added code `M32` for `PN Emergency Dept` in [Mental Health Review Location](./CodeSystem-nzcr-mental-health-review-location-code-cs.html) code system.
* Added [nzcrRelgion](./ValueSet-nzcr-combined-religion-vs.html) combined value set to also allow us to have multiple codings and not break the validator.
* Fields `Patient.communication.language` and  `Patient.contact.relationship` no-longer permit alternate codings.

### v1.0.3-rc3
* Created [nzcrResidency](./StructureDefinition-nzcr-residency.html) and [nzcrEthnicity](./StructureDefinition-nzcr-ethnicity.html) extensions as duplicates of their cousins in the NZBase, so we don't break our validator.
* Created [NZCentralRegionPatientAdditionalBinding](./StructureDefinition-NZCentralRegionPatientAdditionalBinding.html) a special profile of [NZCentralRegionPatient](./StructureDefinition-NZCentralRegionPatient.html) that makes use of [AdditionalBinding extension](https://build.fhir.org/ig/FHIR/fhir-tools-ig/StructureDefinition-additional-binding.html) to require multiple `coding` entries on `ethnicity` and `nz-residency` fields.

### v1.0.3-rc2
* Combined [level 4](https://simplifier.net/packages/fhir.org.nz.ig.base/2.0.0/files/783771/) and [Level 2](./CodeSystem-nzcr-ethnicity-level-2-code-system.html) codes into one [Combined Ethnicity](./ValueSet-nzcr-combined-ethnicity-vs.html) value set for `Patient.extension[ethnicity]` validation.

### v1.0.3-rc1
* Field `AllergyIntolerance.recorder` field is now optional, as field `ZAL.10` may not be present in source HL7 message.
* Added `http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NP` to [Allergy Reaction Code](./ValueSet-nzcr-allergy-reaction-vs.html) to denote when field `ZAL.4.1` is not present in the source HL7 message.
* Added `http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NP` to [Flag Alert Code](./ValueSet-nzcr-flag-alert-code-vs.html) to denote when `ZAL` segment is denotes an `NHIMWS` category alert that has only free-text rather than a code value in the source HL7 message
* Field `ClinicalImpression.effectiveDateTime` is now optional, as field `ZLS-8` may not be present in the source HL7 message.
* Added codes `#WRH` and `#WHN` for `Wairarapa Hospital` and `Whanganui Hospital`, as well as `#5750`  `Whanganui Mental Health Services`, `#1234` `New Zealand Health Information Service`,  `#6001` `Centre for Adverse Reaction Monitoring` to [Hospital Codes](./CodeSystem-nzcr-hospital-code-cs.html)
* Contact [RelationshipCodes](./CodeSystem-nzcr-contact-relationship-cs.html)  `1` `Mother` through `9` `Nephew` are actually `01` through `09`.
* Cardinality of `Patient.Adress.line` updated to `0..2` as can get lines from `PID-11.1` and `PID-11.2`
* Added code `#X` `Separated` to [Marital Codes](./CodeSystem-nzcr-raw-marital-status-cs.html) to sit alongside `#L` `Legally Separated`
* Corrected typo in `R01` `Drug anaphylaxis` from [Allergy Reaction](./CodeSystem-nzcr-allergy-reaction-h1h3-cs.html)
* Added `http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NP` to [Hospital Codes](./ValueSet-nzcr-hospital-code-vs.html) to denote when field `ZAL.13.1` is not present in the source HL7 message.

### v1.0.2 
*  Rules requiring multiple coding entries on `Flag.category`, `Patient.extension[ethnicity]` etc are done using array slicing rather than [FHIR AdditionalBinding extension](https://build.fhir.org/ig/FHIR/fhir-tools-ig/StructureDefinition-additional-binding.html).   This means the original ValueSet bindings are removed.
* `Patient.telecom` cardinality put back to `0..*`

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

* Added [Developer Guide](./devGuide-Onboarding.html) outlining the process for provisioning API clients, and obtaining an OAuth access token
  to authenticate subsequent FHIR API calls.

* Added this release history page

### v0.5.0

* The first of the almost useful editions of the Integration Guide.
