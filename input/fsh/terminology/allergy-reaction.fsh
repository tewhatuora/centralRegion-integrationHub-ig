CodeSystem:  NZCentralRegionAllergyReactionA3A4CodeSystem
Id: nzcr-allergy-reaction-a3a4-cs
Title: "NZ Central Region - Allergy Reaction (A3, A4) Code System"
Description:  "Allergy Reaction codes for categories A3 & A4; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionA3A4CS
* ^experimental = false
* ^caseSensitive = true

* #R01  "Bee stings"
* #R02  "Hay fever"
* #R03  "Not known"
* #R04  "Nuts"
* #R05  "Medication"


CodeSystem:  NZCentralRegionAllergyReactionH1H3CodeSystem
Id: nzcr-allergy-reaction-h1h3-cs
Title: "NZ Central Region - Allergy Reaction (H1, H3) Code System"
Description:  "Allergy Reaction codes for categories H1 & H3; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionH1H3CS
* ^experimental = false
* ^caseSensitive = true

* #R01  "Drg anaphylaxis"
* #R02  "drug allergy"
* #R03  "drug intolerance"
* #R04  "food anaphylaxis"
* #R05  "food allergy"
* #R06  "food intolerance"
* #R07  "other anaphylaxis"
* #R08  "other allergy"
* #R09  "other intolerance"




ValueSet: NZCentralRegionAllergyReactionValueSet
Id: nzcr-allergy-reaction-vs
Title: "NZ Central Region - Allergy Reaction Value Set"
Description:  "Allergy Reaction codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionVS
* ^experimental = false

* include codes from system nzcr-allergy-reaction-a3a4-cs
* include codes from system nzcr-allergy-reaction-h1h3-cs
