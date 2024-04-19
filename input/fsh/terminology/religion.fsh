CodeSystem:  NZCentralRegionReligionCodeSystem
Id: nzcr-religion-cs
Title: "NZ Central Region - NZ Religion Code System"
Description:  "Religion codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionReligionCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #R01	"C of E/Anglican"
* #R02	"Agnostic"
* #R03	"Assembly of God"
* #R04	"Apostolic"
* #R05	"Atheist"
* #R06	"Bahai"
* #R07	"Baptist"
* #R08	"Brethren"
* #R09	"Buddhist"
* #R10	"Christian"
* #R11	"Church of Christ"
* #R12	"Christian Unspecific"
* #R13	"Cook Isld. Christian"
* #R14	"Congregational"
* #R15	"Druid"
* #R16	"Episcopalian"
* #R17	"Greek Orthodox"
* #R18	"Hebrew/Jewish"
* #R19	"Hindu"
* #R20	"Jehovahs Witness"
* #R21	"New Life Centre"
* #R22	"Latter Day Saints"
* #R23	"Lutheran"
* #R24	"Methodist"
* #R25	"Muslim"
* #R26	"No Religion"
* #R27	"Objects to question"
* #R28	"Open Bretheren"
* #R29	"Any other church"
* #R30	"Pentecostal"
* #R31	"Pacific Is Christian"
* #R32	"Pacific Is Presbytrn"
* #R33	"Presbyterian"
* #R34	"Protestant"
* #R35	"Quaker"
* #R36	"Roman Catholic"
* #R37	"Ringatu"
* #R38	"Ratana"
* #R39	"Salvation Army"
* #R40  "Seventh Day Advents"



ValueSet: NZCentralRegionCombinedReligionValueSet
Id: nzcr-combined-religion-vs
Title: "NZ Central Region - Combined Religion Value Set"
Description:  "Religion codes ex. WebPAS and HL7 "

* ^url = $NZCentralRegionCombinedReligionVS

* ^status = #active
* ^experimental = false

* include codes from system $HL7PatientRelgionCS
* include codes from system nzcr-religion-cs


// WebPAS religion codes are very customised
Instance: nzcr-religion-map
InstanceOf: ConceptMap
Usage: #definition
Description: "Concept map mapping raw religion codes ex. WebPAS to proper FHIR religion codes"

* name = "NZCRReligionConceptMap"
* title = "NZ Central Region Religion Concept Map"
* description = "Concept map mapping raw religion codes ex. WebPAS to proper FHIR religion codes"

* url = $NZCentralRegionReligionConceptMap
* status = #active
* experimental = false
* purpose = "Concept map mapping raw religion codes ex. WebPAS to proper FHIR religion codes"
* sourceUri = $NZCentralRegionReligionVS            // Source ValueSet
* targetUri = $HL7PatientRelgionVS                  // Target ValueSet
* group[+]                                          // Separate Group for each Source/Target CodeSystem tuple
  * source = $NZCentralRegionReligionCS
  * target =  $HL7PatientRelgionCS

* insert cmapEntry(R01, "C of E/Anglican",       1005, "Anglican")
* insert cmapEntry(R02, "Agnostic",              1004, "Agnosticism")
* insert cmapEntry(R03, "Assembly of God",       1061, "Assembly of God")
* insert cmapEntry(R04, "Apostolic",             1038, "Pentecostal")
* insert cmapEntry(R05, "Atheist",               1007, "Atheism")
* insert cmapEntry(R06, "Bahai",                 1008, "Babi & Baha'I faiths")
* insert cmapEntry(R07, "Baptist",               1009, "Baptist")
* insert cmapEntry(R08, "Brethren",              1062, "Brethren")
* insert cmapEntry(R09, "Buddhist",              1059, "Zen Buddhism")
* insert cmapEntry(R10, "Christian",             1013, "Christian (non-Catholic\, non-specific\)")
* insert cmapEntry(R11, "Church of Christ",      1064, "Church of Christ")
* insert cmapEntry(R12, "Christian Unspecific",  1013, "Christian (non-Catholic\, non-specific\)")
* insert cmapEntry(R13, "Cook Isld. Christian",  1066, "Congregational")
* insert cmapEntry(R14, "Congregational",        1066, "Congregational")
* insert cmapEntry(R15, "Druid",                 1037, "Paganism")
* insert cmapEntry(R16, "Episcopalian",          1069, "Episcopalian")
* insert cmapEntry(R17, "Greek Orthodox",        1068, "Eastern Orthodox")
* insert cmapEntry(R18, "Hebrew/Jewish",         1026, "Judaism")
* insert cmapEntry(R19, "Hindu",                 1020, "Hinduism")
* insert cmapEntry(R20, "Jehovahs Witness",      1025, "Jehovah's Witnesses")
* insert cmapEntry(R21, "New Life Centre",       1038, "Pentecostal")
* insert cmapEntry(R22, "Latter Day Saints",     1027, "Latter Day Saints")
* insert cmapEntry(R23, "Lutheran",              1028, "Lutheran")
* insert cmapEntry(R24, "Methodist",             1073, "Methodist")
* insert cmapEntry(R25, "Muslim",                1023, "Islam")
* insert cmapEntry(R28, "Open Bretheren",        1062, "Brethren")
* insert cmapEntry(R30, "Pentecostal",           1038, "Pentecostal")
* insert cmapEntry(R31, "Pacific Is Christian",  1066, "Congregational")
* insert cmapEntry(R32, "Pacific Is Presbytrn",  1076, "Presbyterian")
* insert cmapEntry(R33, "Presbyterian",          1076, "Presbyterian")
* insert cmapEntry(R34, "Protestant",            1077, "Protestant")
* insert cmapEntry(R35, "Quaker",                1071, "Friends")
* insert cmapEntry(R36, "Roman Catholic",        1041, "Roman Catholic Church")
* insert cmapEntry(R39, "Salvation Army",        1080, "Salvation Army")
* insert cmapEntry(R40, "Seventh Day Advents",   1001, "Adventist")

// Values with no mapping
// * insert cmapEntry(R26, "No Religion",           R26, "No Religion")
// * insert cmapEntry(R27, "Objects to question",   R27, "Objects to question")
// * insert cmapEntry(R29, "Any other church",      R29, "Any other church")
// * insert cmapEntry(R37, "Ringatu",               R37, "Ringatu")
// * insert cmapEntry(R38, "Ratana",                R38, "Ratana")
