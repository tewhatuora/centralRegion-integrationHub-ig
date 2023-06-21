CodeSystem:  NZCentralRegionEthnicityLevel2CodeSystem
Id: nzcr-ethnicity-level-2-code-system
Title: "NZ Central Region - Ethnicity Level 2 Code System"
Description:  "Ethnicity Level 2 codes from 
   [Ministry of Health](https://www.health.govt.nz/nz-health-statistics/data-references/code-tables/common-code-tables/ethnicity-code-tables)"

* ^url = $NZStatsEthnicityLevel2CS
* ^experimental = false
* ^caseSensitive = true

* #10	"European (nfd)"
* #11	"NZ European"
* #12	"Other European"
* #21	"Māori"    // not 'NZ Māori' - to match #21111 from ethnicity-level-4 
* #30	"Pacific Island (nfd)"
* #31	"Samoan"
* #32	"Cook Island Māori"
* #33	"Tongan"
* #34	"Niuean"
* #35	"Tokelauan"
* #36	"Fijian"
* #37	"Other Pacific Island"
* #40	"Asian (nfd)"
* #41	"Southeast Asian"
* #42	"Chinese"
* #43	"Indian"
* #44	"Other Asian"
* #51	"Middle Eastern"
* #52	"Latin American / Hispanic"
* #53	"African"
* #61	"Other ethnicity"
* #94	"Don't know"
* #95	"Refused to answer"
* #97	"Response unidentifiable"
* #99	"Not stated"

ValueSet: NZCentralRegionEthnicityLevel2ValueSet
Id: nzcr-ethnicity-level-2-value-set
Title: "NZ Central Region - Ethnicity Level 2 Value Set"
Description:  "Ethnicity Level 2 codes from [Ministry of Health](https://www.health.govt.nz/nz-health-statistics/data-references/code-tables/common-code-tables/ethnicity-code-tables)"

* ^url = $NZCentralRegionEthnicityLevel2VS
* ^experimental = false

* include codes from system nzcr-ethnicity-level-2-code-system


// WebPAS ethnicity codes are the wrong level...
Instance: nzcr-ethnicity-2to4-map
InstanceOf: ConceptMap
Usage: #definition

Description: "Concept map mapping level 2 ethnicity codes ex. WebPAS to proper level 4 ethnicity codes"

* name = "NZCREthnicityConceptMap"
* title = "NZ Central Region Ethnicity Concept Map"
* description = "Concept map mapping level 2 ethnicity codes ex. WebPAS to proper level 4 ethnicity codes"

* url = $NZCentralRegionEthnicityConceptMap
* experimental = false
* purpose = "Translates level 2 ethnicity codes used in WebPAS to more recognised level 4 ethnicity codes"
* status = #active
* sourceUri = $NZStatsEthnicityLevel2CS
* targetUri = $NZStatsEthnicityLevel4CS
* group[+]
  * source = $NZStatsEthnicityLevel2CS
  * target = $NZStatsEthnicityLevel4CS

* insert cmapEntry(10,  "European (nfd\)",           10000,  "European nfd")
* insert cmapEntry(11,	"NZ European",               11111,  "New Zealand European")
* insert cmapEntry(12,	"Other European",            10000,  "European nfd")
* insert cmapEntry(21,	"Māori",                     21111,  "Māori")
* insert cmapEntry(30,	"Pacific Island (nfd\)",     30000,  "Pacific Peoples nfd")
* insert cmapEntry(31,	"Samoan",                    31111,  "Samoan")
* insert cmapEntry(32,	"Cook Island Māori",         32100,  "Cook Islands Maori")
* insert cmapEntry(33,	"Tongan",                    33111,  "Tongan")
* insert cmapEntry(34,	"Niuean",                    34111,  "Niuean")
* insert cmapEntry(35,	"Tokelauan",                 35111,  "Tokelauan")
* insert cmapEntry(36,	"Fijian",                    36111,  "Fijian")
* insert cmapEntry(37,	"Other Pacific Island",      30000,  "Pacific Peoples nfd")
* insert cmapEntry(40,	"Asian (nfd\)",              40000,  "Asian nfd")
* insert cmapEntry(41,	"Southeast Asian",           41000,  "Southeast Asian nfd")
* insert cmapEntry(42,	"Chinese",                   42100,  "Chinese nfd")
* insert cmapEntry(43,	"Indian",                    43100,  "Indian nfd")
* insert cmapEntry(44,	"Other Asian",               40000,  "Asian nfd")
* insert cmapEntry(51,	"Middle Eastern",            51100,  "Middle Eastern nfd")
* insert cmapEntry(52,	"Latin American / Hispanic", 52100,  "Latin American nfd")
* insert cmapEntry(53,	"African",                   53100,  "African nfd")
* insert cmapEntry(61,	"Other ethnicity",           61199,  "Other Ethnicity nec")
* insert cmapEntry(94,	"Don't know",                94444,  "Don't Know")
* insert cmapEntry(95,	"Refused to answer",         95555,  "Refused to Answer")
* insert cmapEntry(97,	"Response unidentifiable",   97777,  "Response unidentifiable")
* insert cmapEntry(99,	"Not stated",                99999,  "Not Stated")
