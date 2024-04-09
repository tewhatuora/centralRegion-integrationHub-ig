CodeSystem:  NZCentralRegionAlertTypeCodeSystem
Id: nzcr-alert-category-cs
Title: "NZ Central Region - Alert Category Code System"
Description:  "Alert Category codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionAlertCategoryCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #NHIMWS	"Medical Warning System"
* #A3   "Allergies"
* #A4   "Allergies"
* #FA	"Not Used"             // FA --> Future Action
* #DA	"HCP Arrangements"     // DA --> Dr Arrangements
* #MC	"Miscellaneous Contraindication"   // -- Free text alert, no code values
* #MA	"Miscellaneous"                    // -- Free text alert, no code values
* #LS	"Legal Status"
* #H1	"Drug reaction"
* #H2	"Medical condition"
* #H3	"Other allergy"
* #H4	"Infection prevention alerts"
* #H5	"Situational alerts"
* #H6	"Transfusion issue alerts"
* #H7	"Disability alerts"
* #H8	"Care planning alerts"

* #food "Food Allergy"   // from sample not documentation




ValueSet: NZCentralRegionAllergyAlertCategoryValueSet
Id: nzcr-allergy-alert-category-vs
Title: "NZ Central Region - Allergy Alert Category Value Set"
Description:  "Alert Category codes ex. WebPAS in NZ Central Region that denote an AllergyIntolerance"

* ^url = $NZCentralRegionAllergyAlertCategoryVS
* ^status = #active
* ^experimental = false

*  nzcr-alert-category-cs#A3
*  nzcr-alert-category-cs#A4
*  nzcr-alert-category-cs#H1
*  nzcr-alert-category-cs#H3
*  nzcr-alert-category-cs#food


ValueSet: NZCentralRegionFlagAlertCategoryValueSet
Id: nzcr-flag-alert-category-vs
Title: "NZ Central Region - Flag Alert Category Value Set"
Description:  "Alert Category codes ex. WebPAS in NZ Central Region that denote a Flag"

* ^url = $NZCentralRegionFlagAlertCategoryVS
* ^status = #active
* ^experimental = false

* nzcr-alert-category-cs#NHIMWS
* nzcr-alert-category-cs#FA
* nzcr-alert-category-cs#DA
* nzcr-alert-category-cs#MC
* nzcr-alert-category-cs#MA
* nzcr-alert-category-cs#LS
* nzcr-alert-category-cs#H2
* nzcr-alert-category-cs#H4
* nzcr-alert-category-cs#H5
* nzcr-alert-category-cs#H6
* nzcr-alert-category-cs#H7
* nzcr-alert-category-cs#H8

// * include codes from system nzcr-alert-category-cs
// * exclude codes from valueset nzcr-allergy-alert-category-vs





// FHIR Flag category Codes from WebPAS Alert category codes
Instance: nzcr-flag-category-map
InstanceOf: ConceptMap
Usage: #definition

Description: "Concept map mapping alert category codes ex. WebPAS to FHIR Flag category codes."

* name = "NZCRFlagCategoryConceptMap"
* title = "NZ Central Region Flag Category Concept Map"
* description = "Concept map mapping alert category codes ex. WebPAS to FHIR Flag category codes"

* url = $NZCentralRegionFlagCategoryConceptMap
* status = #active
* experimental = false
* purpose = "Translates alert category codes used in WebPAS to FHIR flag category codes"
* sourceUri = $NZCentralRegionFlagAlertCategoryVS  // Source ValueSet
* targetUri = $HL7FlagCategoryCS                   // Target ValueSet
* group[+]                                         // Separate Group for each Source/Target CodeSystem tuple
  * source = $NZCentralRegionAlertCategoryCS
  * target = $HL7FlagCategoryCS

* insert cmapEntry(NHIMWS,	"Medical Warning System",         "safety",   "Safety")
* insert cmapEntry(A3,      "Allergies",                      "safety",   "Safety")
* insert cmapEntry(A4,      "Allergies",                      "safety",   "Safety")
* insert cmapEntry(FA,	    "Not Used",                       "safety",   "Safety")
* insert cmapEntry(DA,	    "HCP Arrangements",               "safety",   "Safety")
* insert cmapEntry(MC,	    "Miscellaneous Contraindication", "safety",   "Safety")
* insert cmapEntry(MA,	    "Miscellaneous",                  "safety",   "Safety")
* insert cmapEntry(LS,	    "Legal Status",                   "clinical", "Clinical")   // Mental Health Legal Status
* insert cmapEntry(H1,	    "Drug reaction alerts",           "safety",   "Safety")     // Maybe drug ??
* insert cmapEntry(H2,	    "Medical condition alerts",       "safety",   "Safety")
* insert cmapEntry(H3,	"Other allergy alerts",               "safety",   "Safety")
* insert cmapEntry(H4,	"Infection prevention alerts",        "safety",   "Safety")
* insert cmapEntry(H5,	"Situational alerts",                 "safety",   "Safety")
* insert cmapEntry(H6,	"Transfusion issue alerts",           "safety",   "Safety")
* insert cmapEntry(H7,	"Disability Alerts",                  "safety",   "Safety")
* insert cmapEntry(H8,	"Care planning alerts",               "safety",   "Safety")

