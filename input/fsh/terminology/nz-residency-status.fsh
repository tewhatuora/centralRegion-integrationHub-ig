CodeSystem:  NZCentralRegionResidencyCodeSystem
Id: nzcr-residency-code-system
Title: "NZ Central Region - NZ Residency Code System"
Description:  "Residency codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionResidencyCS
* ^experimental = false
* ^caseSensitive = true

* #ACC	"Non-NZ ACC cover" "Not NZ Resident but covered by ACC"
* #AUS	"Australian" "Australian resident/citizen"
* #CEL	"Child <18 eligible"
* #CNE	"Child <18 not eligible"
* #CWH	"Commonwealth Scholar"
* #DET	"Details required"
* #DIP	"Foreign diplomat"
* #ELI	"Eligible"
* #MNE	"Maternity not eligible"
* #MPE	"Maternity ptnr eligible"
* #NEL	"Not eligible"
* #NLR	"Not legally resident"
* #NZ	"New Zealand citizen"
* #NZR	"NZ residence visa"
* #ODF	"Funded O'seas Devt"
* #REC	"Reciprocal urgent"
* #REF	"Refugee"
* #RES	"Resident before 1974"
* #RRV	"Returning Res Visa"
* #STU	"Student visa"
* #VIS	"Visitor's visa"
* #VO2	"Work visa > 2 years"
* #VU2	"Work visa < 2 years"


ValueSet: NZCentralRegionResidencyValueSet
Id: nzcr-residency-value-set
Title: "NZ Central Region - NZ Residency Value Set"
Description:  "NZ Residency Codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionEthnicityLevel2VS
* ^experimental = false

* include codes from system nzcr-residency-code-system
