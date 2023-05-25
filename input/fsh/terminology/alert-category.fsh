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
* #FA	"Food Allergy"
* #DA	"Drug Allergy"
* #MC	"Miscellaneous Contraindication"
* #MA	"Miscellaneous"
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
*  nzcr-alert-category-cs#FA     // Food Allergy --> implies it's an allergy alert type
*  nzcr-alert-category-cs#DA     // Drug Allergy --> implies it's an allergy alert type





ValueSet: NZCentralRegionFlagAlertCategoryValueSet
Id: nzcr-flag-alert-category-vs
Title: "NZ Central Region - Flag Alert Category Value Set"
Description:  "Alert Category codes ex. WebPAS in NZ Central Region that denote a Flag"

* ^url = $NZCentralRegionFlagAlertCategoryVS
* ^experimental = false

* include codes from system nzcr-alert-category-cs
* exclude codes from valueset nzcr-allergy-alert-category-vs

