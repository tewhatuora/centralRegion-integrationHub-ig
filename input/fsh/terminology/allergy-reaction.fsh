CodeSystem:  NZCentralRegionAllergyReactionCodeSystem
Id: nzcr-allergy-reaction-cs
Title: "NZ Central Region - Allergy Reaction Code System"
Description:  "Allergy Reaction codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionCS
* ^experimental = false
* ^caseSensitive = true

* #01 "Swelling and Rash"

ValueSet: NZCentralRegionAllergyReactionValueSet
Id: nzcr-allergy-reaction-vs
Title: "NZ Central Region - Allergy Reaction Value Set"
Description:  "Allergy Reaction codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionVS
* ^experimental = false

* include codes from system nzcr-allergy-reaction-cs
