CodeSystem:  NZCentralRegionRawLanguageCodeSystem
Id: nzcr-raw-language-cs
Title: "NZ Central Region - Raw Language Code System"
Description:  "3 and 4 character codes denoting Language ex. WebPAS in NZ Central Region; Codes are **NOT** from ietf:bcp:47"

* ^url = $NZCentralRegionRawLanguageCS
* ^experimental = false
* ^caseSensitive = true

* #ACE  "Acehnese"
* #ACH  "Acoli"
* #AFR  "Afrikaans"
* #AII  "Assyrian Arabic"
* #AMH  "Amharic"
* #ARA  "Arabic"
* #ASE  "Sign Lang - American"
* #BEN  "Bengali"
* #BUL  "Bulgarian"
* #CDO  "Chinese - Foochow"
* #CES  "Czechoslovakian"
* #CHM  "Chinese - Mandarin"
* #DAN  "Danish"
* #DIN  "Dinka"
* #DUT  "Dutch"
* #DZO  "Bhutanese"
* #ENG  "English"
* #FAS  "Farsi"
* #FIJ  "Fijian"
* #FIL  "Filipino"
* #FIN  "Finnish"
* #FRE  "French"
* #GER  "German"
* #GRE  "Greek"
* #GUJ  "Indian - Gujarati"
* #HAK  "Chinese - Hakka"
* #HEB  "Hebrew"
* #HIF  "Fijian - Hindi"
* #HIN  "Indian - Hindi"
* #HLT  "Matu (T Burmese)"
* #HRV  "Croatian"
* #HUN  "Hungarian"
* #ILS  "Sign Lang - Std Intl"
* #IND  "Indonesian"
* #ITA  "Italian"
* #JAP  "Japanese"
* #KHM  "Khmer"
* #KIN  "Kinyarwanda"
* #KMR  "Kurdish - Badinani"
* #KOR  "Korean"
* #KUR  "Kurdish"
* #LAO  "Lao"
* #MAO  "NZ Maori"
* #MSA  "Malay"
* #MYA  "Burmese"
* #NAN  "Chinese - Hokkien"
* #NEP  "Nepalese"
* #NIU  "Niuean"
* #NOR  "Norwegian"
* #NZS  "Sign Lang - NZ"
* #ORM  "Oromo"
* #PAN  "Indian - Punjabi"
* #POL  "Polish"
* #POR  "Portuguese"
* #PRS  "Dari-Afghanistan"
* #RAR  "Cook Island Maori"
* #RUN  "Kirundi"
* #RUS  "Russian"
* #SAM  "Samoan"
* #SIN  "Sinhalese (Sri Lankan)"
* #SLK  "Slovak"
* #SOM  "Somalian"
* #SPA  "Spanish"
* #SRP  "Serbo-croatian"
* #SWA  "Swahili"
* #SWE  "Swedish"
* #TAM  "Tamil"
* #THA  "Thai"
* #TIR  "Tigrinya"
* #TKL  "Tokelauan"
* #TON  "Tongan"
* #TUR  "Turkish"
* #TVL  "Tuvalu"
* #UKR  "Ukrainian"
* #URD  "Urdu"
* #VIE  "Vietnamese"
* #YUE  "Chinese - Cantonese"
* #zFOO  "Chinese - Fookien"
* #zLEB  "Lebanese"
* #zOTH  "Other - Not Further Defined"
* #zROH  "Rohingya"
* #zTEO  "Chinese - Teochoew"

CodeSystem:  NZCentralRegionProposedLanguageCodeSystem
Id: nzcr-proposed-language-cs
Title: "NZ Central Region - Proposed Language Code System"
Description:  "3 character codes denoting Language ex. WebPAS in NZ Central Region; Codes are **PROPOSED** for ietf:bcp:47"

* ^url = $NZCentralRegionProposedLanguageCS
* ^experimental = false
* ^caseSensitive = true

* #tws  "Teochew"  // proposed iso-639-3


ValueSet: NZCentralRegionLanguageValueSet
Id: nzcr-language-vs
Title: "NZ Central Region - Language Value Set"
Description:  "IETF equivalent Language codes, matching the raw codes used by WebPAS in NZ Central Region."

* ^url = $NZCentralRegionLanguageVS
* ^experimental = false

* $IETFLanguageCS#ace    // Aceh, Indonesia
* $IETFLanguageCS#ach    // Southern Luo dialect, Uganda
* $IETFLanguageCS#af     // Afrikaans,  iso-639-1 takes precedence
* $IETFLanguageCS#ayp    // North Mesopotamian Arabic (ayp) not to be confused with Assyrian Arabic (aii)
* $IETFLanguageCS#am     // Amharic,  Semitic language and lingua franca of Etheopia
* $IETFLanguageCS#ar     // Arabic, iso639-1 takes precedence
* $IETFLanguageCS#ase    // Sign Lang - American
* $IETFLanguageCS#bn     // Bengali,  iso-639-1 takes precedence
* $IETFLanguageCS#bg     // Bulgarian,  iso-639-1 takes precedence
* $IETFLanguageCS#cdo    // Chinese - Foochow  aka: Chinese - Min Dong
* $IETFLanguageCS#cs     // Czechoslovakian  aka: Czech
* $IETFLanguageCS#cmn    // Chinese - Mandarin
* $IETFLanguageCS#da     // Danish, iso-639 takes precedence
* $IETFLanguageCS#din    // Dinka, Nilotic langauge, South Sudan
* $IETFLanguageCS#nl     // Dutch, iso-639-1 takes precendce
* $IETFLanguageCS#dz     // Dzongkha, sino-tibetan language for Bhutan, aka: Bhutanese
* $IETFLanguageCS#en     // English
* $IETFLanguageCS#fa     // Farsi/Persian
* $IETFLanguageCS#fj     // Fijian
* $IETFLanguageCS#fil    // Filipino
* $IETFLanguageCS#fi     // Finnish
* $IETFLanguageCS#fr     // French
* $IETFLanguageCS#de     // German
* $IETFLanguageCS#el     // Greek
* $IETFLanguageCS#gu     // Gujarati
* $IETFLanguageCS#hak    // Hakka Chinese
* $IETFLanguageCS#he     // Hebrew
* $IETFLanguageCS#hif    // Fiji Hindi
* $IETFLanguageCS#hi     // Hindi
* $IETFLanguageCS#hlt    // Matu T (Burmese)
* $IETFLanguageCS#hr     // Croatian
* $IETFLanguageCS#hu     // Hungarian
* $IETFLanguageCS#ils    // Sign Lang - Std Intl
* $IETFLanguageCS#id     // Indonesian
* $IETFLanguageCS#it     // Italian
* $IETFLanguageCS#ja     // Japanese
* $IETFLanguageCS#km     // Central Khmer
* $IETFLanguageCS#rw     // Kinyarwanda
* $IETFLanguageCS#kmr    // Kurdish - Badinani
* $IETFLanguageCS#ko     // Korean
* $IETFLanguageCS#ku     // Kurdish
* $IETFLanguageCS#lo     // Lao
* $IETFLanguageCS#mi     // NZ Māori
* $IETFLanguageCS#ms     // Malay (generic)
* $IETFLanguageCS#my     // Burmese
* $IETFLanguageCS#nan    // Min Nan Chinese, aka Fookien
* $IETFLanguageCS#ne     // Nepali (generic)
* $IETFLanguageCS#niu    // Niuean
* $IETFLanguageCS#no     // Norwegian
* $IETFLanguageCS#nzs    // New Zealand Sign Language
* $IETFLanguageCS#om     // Oromo, Etheopia
* $IETFLanguageCS#pa     // Panjabi/Punjabi
* $IETFLanguageCS#pl     // Polish
* $IETFLanguageCS#pt     // Portuguese
* $IETFLanguageCS#prs    // Dari
* $IETFLanguageCS#rar    // Cook Island Māori
* $IETFLanguageCS#rn     // Rundi
* $IETFLanguageCS#rhg    // Rohingya
* $IETFLanguageCS#ru     // Russian
* $IETFLanguageCS#sm     // Samoan"
* $IETFLanguageCS#si     // Sinhala
* $IETFLanguageCS#sk     // Slovak
* $IETFLanguageCS#so     // Somali
* $IETFLanguageCS#es     // Spanish
* $IETFLanguageCS#sr     // Serbian
* $IETFLanguageCS#sw     // Swahili (macrolanguage)
* $IETFLanguageCS#sv     // Swedish
* $IETFLanguageCS#ta     // Tamil
* $IETFLanguageCS#th     // Thai
* $IETFLanguageCS#ti     // Tigrinya
* $IETFLanguageCS#tkl    // Tokelau
* $IETFLanguageCS#to     // Tonga (Tonga Islands)
* $IETFLanguageCS#tr     // Turkish
* $IETFLanguageCS#tvl    // Tuvalu
* $IETFLanguageCS#uk     // Ukrainian
* $IETFLanguageCS#ur     // Urdu
* $IETFLanguageCS#vi     // Vietnamese
* $IETFLanguageCS#yue    // Yue Chinese

* $NZCentralRegionProposedLanguageCS#tws    // Teochew - Chinese (proposed in iso-639-3)
* $HL7NullFlavourCS#OTH  // Other

// WebPAS language codes are nearly right...
Instance: nzcr-language-map
InstanceOf: ConceptMap
Usage: #definition
Description: "Concept map mapping raw Language codes ex. WebPAS to proper `ietf:bcp:47` language codes"

* name = "NZCRLanguageConceptMap"
* title = "NZ Central Region Language Concept Map"
* description = "Concept map mapping raw Language codes ex. WebPAS to proper `ietf:bcp:47` language codes"

* url = $NZCentralRegionLanguageConceptMap
* experimental = false
* purpose = "Translates raw language codes used in WebPAS to more recognised `ietf:bcp:47` language codes"
* status = #active
* sourceUri = $NZCentralRegionRawLanguageCS
* targetUri = $IETFLanguageCS
* group[+]
  * source = $NZCentralRegionRawLanguageCS
  * target = $IETFLanguageCS

* insert cmapEntry(ACH, "Acoli",          ach, "Acoli")
* insert cmapEntry(DIN, "Dinka",          din, "Dinka")
* insert cmapEntry(FIL, "Filipino",       fil, "Filipino")
* insert cmapEntry(NIU, "Niuean",         niu, "Niuean")
* insert cmapEntry(TVL, "Tuvalu",         tvl, "Tuvalu")

* insert cmapEntryComment(ACE, "Acehnese",             ace, "Achinese",   "note name correction; aka Acehnese")
* insert cmapEntryComment(AFR, "Afrikaans",            af,  "Afrikaans",  "iso-639-1 takes precedence")
* insert cmapEntryComment(AII, "Assyrian Arabic",      ayp, "North Mesopotamian Arabic", "utter confusion in correct langauge code and name")
* insert cmapEntryComment(AMH, "Amharic",              am,  "Amharic",   "iso-639-1 takes precedence")
* insert cmapEntryComment(ARA, "Arabic",               ar,  "Arabic",    "iso-639-1 takes precedence")
* insert cmapEntryComment(ASE, "Sign Lang - American", ase, "American Sign Language", "note name correction")
* insert cmapEntryComment(BEN, "Bengali",              bn,  "Bengali",   "iso-639-1 takes precedence")
* insert cmapEntryComment(BUL, "Bulgarian",            bg,  "Bulgarian", "iso-639-1 takes precedence")
* insert cmapEntryComment(CDO, "Chinese - Foochow",    cdo, "Min Dong Chinese",  "note name correction")
* insert cmapEntryComment(CES, "Czechoslovakian",      cs,  "Czech",      "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(CHM, "Chinese - Mandarin",   cmn, "Mandarin",   "please use correct iso code")
* insert cmapEntryComment(DAN, "Danish",               da,  "Danish",     "iso-639-1 takes precedence")
* insert cmapEntryComment(DUT, "Dutch",                nl,  "Dutch",      "iso-639-1 takes precedence")
* insert cmapEntryComment(DZO, "Bhutanese",            dz,  "Dzongkha",   "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(ENG, "English",              en,  "English",    "iso-639-1 takes precedence")
* insert cmapEntryComment(FAS, "Farsi",                fa,  "Persian",    "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(FIJ, "Fijian",               fj,  "Fijian",     "iso-639-1 takes precedence")
* insert cmapEntryComment(FIN, "Finnish",              fi,  "Finish",                "iso-639-1 takes precedence")
* insert cmapEntryComment(GER, "German",               de,  "German",                "iso-639-1 takes precedence")
* insert cmapEntryComment(GRE, "Greek",                el,  "Modern Greek (1453-\)", "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(GUJ, "Indian - Gujarati",    gu,  "Gujarati",              "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(HAK, "Chinese - Hakka",      hak, "Hakka Chinese",         "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(HEB, "Hebrew",               he,  "Hebrew",                "iso-639-1 takes precedence")
* insert cmapEntryComment(HIF, "Fijian - Hindi",       hif, "Fiji Hindi",            "note name correction")
* insert cmapEntryComment(HIN, "Indian - Hindi",       hi,  "Hindi",                 "note name correction")
* insert cmapEntryComment(HLT, "Matu (T Burmese\)",    hlt, "Matu Chin",             "note name correction")
* insert cmapEntryComment(HRV, "Croatian",             hr,  "Croatian",              "iso-639-1 takes precedence")
* insert cmapEntryComment(HUN, "Hungarian",            hu,  "Hungarian",             "iso-639-1 takes precedence")
* insert cmapEntryComment(ILS, "Sign Lang - Std Intl", ils, "International Sign",    "note name correction")
* insert cmapEntryComment(IND, "Indonesian",           id,  "Indonesian",            "iso-639-1 takes precedence")
* insert cmapEntryComment(ITA, "Italian",              it,  "Italian",               "iso-639-1 takes precedence")
* insert cmapEntryComment(JAP, "Japanese",             ja,  "Japanese",              "note code correction")
* insert cmapEntryComment(KIN, "Kinyarwanda",          rw,  "Kinyarwanda",           "iso-639-1 takes precedence")
* insert cmapEntryComment(KHM, "Khmer",                km,  "Central Khmer",         "iso-639-1 takes precedence")
* insert cmapEntryComment(KMR, "Kurdish - Badinani",   kmr, "Northern Kurdish",      "note name correction")
* insert cmapEntryComment(KOR, "Korean",               ko,  "Korean",                "iso-639-1 takes precedence")
* insert cmapEntryComment(KUR, "Kurdish",              ku,  "Kurdish",               "iso-639-1 takes precedence")
* insert cmapEntryComment(LAO, "Lao",                  lo,  "Lao",                   "iso-639-1 takes precedence")
* insert cmapEntryComment(MAO, "NZ Maori",             mi,  "Māori",                 "note macron in name; iso-639-1 takes precedence")
* insert cmapEntryComment(MSA, "Malay",                ms,  "Malay (macrolanguage\)","note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(MYA, "Burmese",              my,  "Burmese",               "iso-639-1 takes precedence")
* insert cmapEntryComment(NAN, "Chinese - Hokkien",    nan, "Min Nan Chinese",            "note name correction")
* insert cmapEntryComment(NEP, "Nepalese",             ne,  "Nepali (macrolanguage\)",    "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(NOR, "Norwegian",            no,  "Norwegian",                  "iso-639-1 takes precedence")
* insert cmapEntryComment(NZS, "Sign Lang - NZ",       nzs, "New Zealand Sign Language",  "note name correction")
* insert cmapEntryComment(ORM, "Oromo",                om,  "Oromo",                      "iso-639-1 takes precedence")
* insert cmapEntryComment(PAN, "Indian - Punjabi",     pa,  "Panjabi",                    "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(POL, "Polish",               pl,  "Polish",                     "iso-639-1 takes precedence")
* insert cmapEntryComment(POR, "Portuguese",           pt,  "Portuguese",                 "iso-639-1 takes precedence")
* insert cmapEntryComment(PRS, "Dari-Afghanistan",     prs, "Dari",                       "note name correction")
* insert cmapEntryComment(RAR, "Cook Island Maori",    rar, "Cook Island Māori",          "note macron in name; not using mi-CK")
* insert cmapEntryComment(RUN, "Kirundi",              rn,  "Rundi",                      "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(RUS, "Russian",              ru,  "Russian",                    "iso-639-1 takes precedence")
* insert cmapEntryComment(SAM, "Samoan",               sm,  "Samoan",                     "iso-639-1 takes precedence")
* insert cmapEntryComment(SIN, "Sinhalese (Sri Lankan\)",  si,"Sinhala",                  "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(SLK, "Slovak",                sk,  "Slovak",                    "iso-639-1 takes precedence")
* insert cmapEntryComment(SOM, "Somalian",              so,  "Somali",                    "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(SPA, "Spanish",               es,  "Spanish",                   "iso-639-1 takes precedence")
* insert cmapEntryComment(SRP, "Serbo-croatian",        sr,  "Serbian",                   "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(SWA, "Swahili",               sw,  "Swahili (macrolanguage\)",  "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(SWE, "Swedish",               sv,  "Swedish",                   "iso-639-1 takes precedence")
* insert cmapEntryComment(TAM, "Tamil",                 ta,  "Tamil",                     "iso-639-1 takes precedence")
* insert cmapEntryComment(THA, "Thai",                  th,  "Thai",                      "iso-639-1 takes precedence")
* insert cmapEntryComment(TIR, "Tigrinya",              ti,  "Tigrinya",                  "iso-639-1 takes precedence")
* insert cmapEntryComment(TKL, "Tokelauan",             tkl, "Tokelaua",                  "note name correction")
* insert cmapEntryComment(TON, "Tongan",                to,  "Tonga (Tonga Islands\)",    "note name correction - there is more than one Tonga language; iso-639-1 takes precedence")
* insert cmapEntryComment(TUR, "Turkish",               tr,  "Turkish",                   "iso-639-1 takes precedence")
* insert cmapEntryComment(UKR, "Ukrainian",             uk,  "Ukrainian",                 "iso-639-1 takes precedence")
* insert cmapEntryComment(URD, "Urdu",                  ur,  "Urdu",                      "iso-639-1 takes precedence")
* insert cmapEntryComment(VIE, "Vietnamese",            vi,  "Vietnamese",                "iso-639-1 takes precedence")
* insert cmapEntryComment(YUE, "Chinese - Cantonese",   yue, "Yue Chinese",               "note name correction; iso-639-1 takes precedence")
* insert cmapEntryComment(zFOO, "Chinese - Fookien",    nan, "Min Nan Chinese",           "Fukien and Hokkien seem to be equivalent names for potentiall different dialects of Min Nan Chinese")
* insert cmapEntryComment(zLEB, "Lebanese",             apc, "North Levantine Arabic",    "note name and code correction")
* insert cmapEntryComment(zROH, "Rohingya",             rhg, "Rohingya",                  "note code correction")

// ... proposed TWS code not in urn:ietf:bcp:47 (yet)
* group[+]
  * source = $NZCentralRegionRawLanguageCS
  * target = $NZCentralRegionProposedLanguageCS
  * element[+]
    * code = #zTEO
    * display = "Chinese - Teochoew"
    * target[+]
      * code = #tws
      * display = "Teochew"
      * equivalence = #equivalent
      * comment = "Proposed value for iso-630-3"

// ... and the orphan OTH value
* group[+]
  * source = $NZCentralRegionRawLanguageCS
  * target = $HL7NullFlavourCS
  * element[+]
    * code = #zOTH
    * display = "Other - Not Further Defined"
    * target[+]
      * code = #OTH
      * display = "Other"
      * equivalence = #equivalent
      * comment = "NULL values are not from ietf namespace"
