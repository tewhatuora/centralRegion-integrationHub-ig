CodeSystem:  NZCentralRegionAlertTypeCodeSystem
Id: nzcr-alert-type-code-system
Title: "NZ Central Region - Alert Type Code System"
Description:  "Alert Type codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionAlertTypeCS
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
* #H6	"Transfusion issue alerts "
* #H7	"Disability Alerts"
* #H8	"Care planning alerts"





ValueSet: NZCentralRegionAllergyAlertTypeValueSet
Id: nzcr-allergy-alert-type-value-set
Title: "NZ Central Region - Allergy Alert Type Value Set"
Description:  "Alert Type codes ex. WebPAS in NZ Central Region that denote an AllergyIntolerance"

* ^url = $NZCentralRegionAllergyAlertTypeVS
* ^experimental = false

*  nzcr-alert-type-code-system#A3
*  nzcr-alert-type-code-system#A4
*  nzcr-alert-type-code-system#H1
*  nzcr-alert-type-code-system#H3
*  nzcr-alert-type-code-system#FA     // Food Allergy --> implies it's an allergy alert type
*  nzcr-alert-type-code-system#DA     // Drug Allergy --> implies it's an allergy alert type





ValueSet: NZCentralRegionFlagAlertTypeValueSet
Id: nzcr-flag-alert-type-value-set
Title: "NZ Central Region - Flag Alert Type Value Set"
Description:  "Alert Type codes ex. WebPAS in NZ Central Region that denote a Flag"

* ^url = $NZCentralRegionFlagAlertTypeVS
* ^experimental = false

* include codes from system nzcr-alert-type-code-system
* exclude codes from valueset nzcr-allergy-alert-type-value-set

