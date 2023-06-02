CodeSystem:  NZCentralRegionRawLanguageCodeSystem
Id: nzcr-raw-language-cs
Title: "NZ Central Region - Language Code System"
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
* $IETFLanguageCS#cz     // Czechoslovakian  aka: Czech
* $IETFLanguageCS#cmn    // Chinese - Mandarin
* $IETFLanguageCS#dan    // Danish, iso-639 takes precedence
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
* $IETFLanguageCS#heb    // Hebrew
/*
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
*/

// The concept map gets a bit repetitive
RuleSet: langEntry(from, frDisplay, to, toDisplay) 
* group[=].element[+]
  * code = #{from}
  * display = {frDisplay}
  * target[+]
    * code = #{to}
    * display = {toDisplay}
    * equivalence = #equivalent

RuleSet: langEntryComment(from, frDisplay, to, toDisplay, comment)
* insert langEntry({from}, {frDisplay}, {to}, {toDisplay})
* group[=].element[=].target[=].comment = {comment}


// WebPAS language codes are nearly right...
Instance: ConceptMap-LanguageMap
InstanceOf: ConceptMap
Description: "Concept map mapping raw Langeuage codes ex. WebPAS to proper ietf:bcp:47 language codes"

* url = $NZCentralRegionLanguageConceptMap
* purpose = "To translate raw language codes used in WebPAS to more recognised language codes"
* status = #draft
* sourceUri = $NZCentralRegionRawLanguageCS
* targetUri = $IETFLanguageCS
* group[+]
  * source = $NZCentralRegionRawLanguageCS
  * target = $IETFLanguageCS

* insert langEntry(ACH, "Acoli",                     ach, "Acoli")
* insert langEntry(DIN, "Dinka",                     din, "Dinka")
* insert langEntry(FIL, "Filipino",                  fil, "Filipino")

* insert langEntryComment(ACE, "Acehnese",             ace, "Achinese",   "note name correction; aka Acehnese")
* insert langEntryComment(AFR, "Afrikaans",            af,  "Afrikaans",  "iso-639-1 takes precedence")
* insert langEntryComment(AII, "Assyrian Arabic",      ayp, "North Mesopotamian Arabic", "utter confusion in correct langauge code and name")
* insert langEntryComment(AMH, "Amharic",              am,  "Amharic",   "iso-639-1 takes precedence")
* insert langEntryComment(ARA, "Arabic",               ar,  "Arabic",    "iso-639-1 takes precedence")
* insert langEntryComment(ASE, "Sign Lang - American", ase, "American Sign Language", "note name correction")
* insert langEntryComment(BEN, "Bengali",              bn,  "Bengali",   "iso-639-1 takes precedence")
* insert langEntryComment(BUL, "Bulgarian",            bg,  "Bulgarian", "iso-639-1 takes precedence")
* insert langEntryComment(CDO, "Chinese - Foochow",    cdo, "Min Dong Chinese",  "note name correction")
* insert langEntryComment(CES, "Czechoslovakian",      cs,  "Czech",      "note name correction; iso-639-1 takes precedence")
* insert langEntryComment(CHM, "Chinese - Mandarin",   cmn, "Mandarin",   "please use correct iso code")
* insert langEntryComment(DAN, "Danish",               da,  "Danish",     "iso-639-1 takes precedence")
* insert langEntryComment(DUT, "Dutch",                nl,  "Dutch",      "iso-639-1 takes precedence")
* insert langEntryComment(DZO, "Bhutanese",            dz,  "Dzongkha",   "note name correction; iso-639-1 takes precedence")
* insert langEntryComment(ENG, "English",              en,  "English",    "iso-639-1 takes precedence")
* insert langEntryComment(FAS, "Farsi",                fa,  "Persian",    "note name correction; iso-639-1 takes precedence")
* insert langEntryComment(FIJ, "Fijian",               fj,  "Fijian",     "iso-639-1 takes precedence")
* insert langEntryComment(FIN, "Finnish",              fi,  "Finish",     "iso-639-1 takes precedence")
* insert langEntryComment(GER, "German",               de,  "German",     "iso-639-1 takes precedence")
* insert langEntryComment(GRE, "Greek",                el,  "Modern Greek (1453 - ", "note name correction; iso-639-1 takes precedence")
* insert langEntryComment(GUJ, "Indian - Gujarati",    gu,  "Gujurati",        "note name correction; iso-639-1 takes precedence")
* insert langEntryComment(HAK, "Chinese - Hakka",      hak, "Hakka Chinese",   "note name correction; iso-639-1 takes precedence")
* insert langEntryComment(HEB, "Hebrew",               he,  "Hebrew",          "iso-639-1 takes precedence")
