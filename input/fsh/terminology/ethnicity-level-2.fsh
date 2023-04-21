CodeSystem:  NZCentralRegionEthnicityLevel2CodeSystem
Id: nzcr-ethnicity-level-2-code-system
Title: "NZ Central Region - Ethnicity Level 2 Code System"
Description:  "Ethnicity Level 2 codes from 
   [Ministry of Health](https://www.health.govt.nz/nz-health-statistics/data-references/code-tables/common-code-tables/ethnicity-code-tables)"

* ^url = $NZStatsEthnicityLevel2
* ^experimental = false
* ^caseSensitive = true

* #10	"European (nfd)"
* #11	"NZ European"
* #12	"Other European"
* #21	"Māori"    // not 'NZ Māori' - to match #21111 from ethnicity-level-4 
* #30	"Pacific Island (nfd))"
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
Title: "NZ Central Region - Ethnicityi Level 2 Value Set"
Description:  "Ethnicity Level 2 codes from [Ministry of Health](https://www.health.govt.nz/nz-health-statistics/data-references/code-tables/common-code-tables/ethnicity-code-tables)"

* ^url = $NZCentralRegionEthnicityLevel2VS
* ^experimental = false

* include codes from system nzcr-ethnicity-level-2-code-system
