CodeSystem:  NZCentralRegionAlertTypeCodeSystem
Id: nzcr-alert-category-cs
Title: "NZ Central Region - Alert Category Code System"
Description:  "Alert Category codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionAlertCategoryCS
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
* #H1	"Drug reaction alerts"
* #H2	"Medical condition alerts"
* #H3	"Other allergy alerts"
* #H4	"Infection prevention alerts"
* #H5	"Situational alerts"
* #H6	"Transfusion issue alerts"
* #H7	"Disability Alerts"
* #H8	"Care planning alerts"

* #food "Food Allergy"   // from sample not documentation




ValueSet: NZCentralRegionAllergyAlertCategoryValueSet
Id: nzcr-allergy-alert-category-vs
Title: "NZ Central Region - Allergy Alert Category Value Set"
Description:  "Alert Category codes ex. WebPAS in NZ Central Region that denote an AllergyIntolerance"

* ^url = $NZCentralRegionAllergyAlertCategoryVS
* ^experimental = false

*  nzcr-alert-category-cs#A3
*  nzcr-alert-category-cs#A4
*  nzcr-alert-category-cs#H1
*  nzcr-alert-category-cs#H3


ValueSet: NZCentralRegionFlagAlertCategoryValueSet
Id: nzcr-flag-alert-category-vs
Title: "NZ Central Region - Flag Alert Category Value Set"
Description:  "Alert Category codes ex. WebPAS in NZ Central Region that denote a Flag"

* ^url = $NZCentralRegionFlagAlertCategoryVS
* ^experimental = false

* include codes from system nzcr-alert-category-cs
* exclude codes from valueset nzcr-allergy-alert-category-vs

