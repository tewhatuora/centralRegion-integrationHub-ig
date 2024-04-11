CodeSystem:  NZCentralRegionResidencyCodeSystem
Id: nzcr-residency-cs
Title: "NZ Central Region - NZ Residency Code System"
Description:  "Residency codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionResidencyCS
* ^status = #active
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
Id: nzcr-residency-vs
Title: "NZ Central Region - NZ Residency Value Set"
Description:  "NZ Residency Codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionResidencyVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-residency-cs


ValueSet: NZCentralRegionCombinedResidencyValueSet
Id: nzcr-combined-residency-vs
Title: "NZ Central Region - Combined NZ Residency Value Set"
Description:  "NZ Residency Codes ex. WebPAS in NZ Central Region + Status codes from NZBase"

* ^url = $NZCentralRegionCombinedResidencyVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-residency-cs
* include codes from system $NZBaseNZResidencyCS



// WebPAS residency codes are far too detailed...
Instance: nzcr-nz-residency-map
InstanceOf: ConceptMap
Usage: #definition
Description: "Concept map mapping raw detailed NZ Residency codes ex. WebPAS to yes | no | unknown codes from NZ Base"

* name = "NZCRResidencyConceptMap"
* title = "NZ Central Region NZ Residency Concept Map"
* description = "Concept map mapping raw detailed NZ Residency codes ex. WebPAS to yes | no | unknown codes from NZ Base"

* url = $NZCentralRegionResidencyConceptMap
* status = #active
* experimental = false
* purpose = "Translates raw detailed NZ Visa & Citizenship codes used in WebPAS to more generic yes | no | unknown codes from NZ Base"
* status = #active
* sourceUri = $NZCentralRegionResidencyVS         // Source ValueSet
* targetUri = $NZBaseNZResidencyVS                // Target ValueSet
* group[+]                                        // Separate Group for each Source/Target CodeSystem tuple
  * source = $NZCentralRegionResidencyCS
  * target = $NZBaseNZResidencyCS

* insert cmapEntry(ACC,	"Non-NZ ACC cover",         no, "Not a Permanent Resident")
* insert cmapEntry(AUS,	"Australian",               no, "Not a Permanent Resident")
* insert cmapEntry(CEL,	"Child <18 eligible",       yes, "Permanent Resident")
* insert cmapEntry(CNE,	"Child <18 not eligible",   no, "Not a Permanent Resident")
* insert cmapEntry(CWH,	"Commonwealth Scholar",     yes, "Permanent Resident")
* insert cmapEntry(DET,	"Details required",         unknown, "Unknown")
* insert cmapEntry(DIP,	"Foreign diplomat",         no, "Not a Permanent Resident")
* insert cmapEntry(ELI,	"Eligible",                 yes, "Permanent Resident")
* insert cmapEntry(MNE,	"Maternity not eligible",   no, "Not a Permanent Resident")
* insert cmapEntry(MPE, "Maternity ptnr eligible",  yes, "Permanent Resident")
* insert cmapEntry(NEL, "Not eligible",             no, "Not a Permanent Resident")
* insert cmapEntry(NLR, "Not legally resident",     no, "Not a Permanent Resident")
* insert cmapEntry(NZ,  "New Zealand citizen",      no, "Not a Permanent Resident")
* insert cmapEntry(NZR, "NZ residence visa",        yes, "Permanent Resident")
* insert cmapEntry(ODF,	"Funded O'seas Devt",       no, "Not a Permanent Resident")
* insert cmapEntry(REC,	"Reciprocal urgent",        no, "Not a Permanent Resident") 
* insert cmapEntry(REF,	"Refugee",                  no, "Not a Permanent Resident")
* insert cmapEntry(RES,	"Resident before 1974",     yes, "Permanent Resident")
* insert cmapEntry(RRV,	"Returning Res Visa",       yes, "Permanent Resident")
* insert cmapEntry(STU,	"Student visa",             no, "Not a Permanent Resident")
* insert cmapEntry(VIS,	"Visitor's visa",           no, "Not a Permanent Resident")
* insert cmapEntry(VO2,	"Work visa > 2 years",      no, "Not a Permanent Resident")
* insert cmapEntry(VU2,	"Work visa < 2 years",      no, "Not a Permanent Resident") 
