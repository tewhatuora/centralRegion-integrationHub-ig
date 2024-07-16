CodeSystem:  NZCentralRegionRawMaritalStatusCodeSystem
Id: nzcr-raw-marital-status-cs
Title: "NZ Central Region - Marital Status Raw Code System"
Description:  "Raw HL7 v2.4 Marital Status codes that are in use in Central Region"

* ^url = $NZCentralRegionRawMaritalStatusCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

// from HL7 v2.4
* #A "Separated"
* #B "Unmarried"
* #C "Common law"
* #D "Divorced"
* #E "Legally Separated"
* #G "Living together"
* #I "Interlocutory"
* #M "Married"
* #N "Annulled"
* #O "Other"
* #P "Domestic partner"
* #R "Registered domestic partner"
* #S "Single"
* #T "Unreported"
* #U "Unknown"
* #W "Widowed"

// extras used by WebPAS
* #L "Legally Separated"
* #X "Separated" "Person is Separated, but not 'Legally Separated'"
* #V "Civil Union" "Person is in a Civil Union"
* #F "De facto" "Person is in a de Facto relationship"


ValueSet: NZCentralRegionRawMaritalStatusValueSet
Id: nzcr-raw-marital-status-vs
Title: "NZ Central Region - Raw Marital Status Value Set"
Description:  "Raw Marital Status value set with values ex WebPAS"

* ^url = $NZCentralRegionRawMaritalStatusVS
* ^status = #active
* ^experimental = false

* include codes from system $NZCentralRegionRawMaritalStatusCS


ValueSet: NZCentralRegionMaritalStatusValueSet
Id: nzcr-marital-status-vs
Title: "NZ Central Region - Marital Status Value Set"
Description:  "Combined Marital Status value set with HL7 defined valueset plus #OTH from NullFlavor, as used in the Central Region"

* ^url = $NZCentralRegionMaritalStatusVS
* ^status = #active
* ^experimental = false

* include codes from system $HL7MaritalStatusCS
* $HL7NullFlavorCS#UNK  // Unknown
* $HL7NullFlavorCS#OTH  // Other


// WebPAS marital status codes need to be translated to (expanded) FHIR codes...
Instance: nzcr-marital-status-map
InstanceOf: ConceptMap
Usage: #definition
Description: "Concept map mapping raw marital status codes ex. WebPAS to (slightly expanded) FHIR Terminology marital status codes"

* name = "NZCRMaritalStatusConceptMap"
* title = "NZ Central Region Marital Status Concept Map"
* description = "Concept map mapping raw marital status codes ex. WebPAS to (slightly expanded) FHIR Terminology marital status codes. 

**Note:** We are mapping to R4 edition of MaritalStatus codes, which does NOT include code `#C` for `Common Law`, we are mapoing all 'informa' marriages to `#T` for `Domestic partner`"

* url = $NZCentralRegionMaritalStatusConceptMap
* status = #active
* experimental = false
* purpose = "Translates raw marital status codes used in WebPAS to more recognised FHIR marital status codes"
* sourceUri = $NZCentralRegionRawMaritalStatusVS // Source ValueSet
* targetUri = $NZCentralRegionMaritalStatusVS    // Target ValueSet
* group[+]                                       // Separate Group for each Source/Target CodeSystem tuple
  * source = $NZCentralRegionRawMaritalStatusCS
  * target = $HL7MaritalStatusCS

* insert cmapEntry(A, "Separated",          "L", "Legally Separated")
* insert cmapEntry(B, "Unmarried",          "U", "Unmarried")
* insert cmapEntry(C, "Common law",         "T", "Domestic partner")
* insert cmapEntry(D, "Divorced",           "D", "Divorced")
* insert cmapEntry(E, "Legally Separated",  "L", "Legally Separated")
* insert cmapEntry(F, "De Facto",           "T", "Domestic partner")
* insert cmapEntry(I, "Interlocutory",      "I", "Interlocutory")
* insert cmapEntry(L, "Legally Separated",  "L", "Legally Separated")
* insert cmapEntry(M, "Married",            "M", "Married")
* insert cmapEntry(N, "Annulled",           "A", "Annulled")
* insert cmapEntry(P, "Domestic Partner",   "T", "Domestic partner")
* insert cmapEntry(S, "Single",             "S", "Never Married")
* insert cmapEntry(W, "Widowed",            "W", "Widowed")
* insert cmapEntry(X, "Separated",          "L", "Legally Separated")

* group[+]                                       // Separate Group for each Source/Target CodeSystem tuple
  * source = $NZCentralRegionRawMaritalStatusCS
  * target = $HL7NullFlavorCS
* insert cmapEntry(G, "Living together",             "OTH", "other")
* insert cmapEntry(V, "Civil Union",                 "OTH", "other")
* insert cmapEntry(R, "Registered domestic partner", "OTH", "other")
* insert cmapEntry(O, "Other",                       "OTH", "other")
* insert cmapEntry(T, "Unreported",                  "UNK", "unknown")
* insert cmapEntry(U, "Unknown",                     "UNK", "unknown")

