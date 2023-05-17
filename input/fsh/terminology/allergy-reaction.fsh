CodeSystem:  NZCentralRegionAllergyReactionCodeSystem
Id: nzcr-allergy-reaction-code-system
Title: "NZ Central Region - Allergy Severity Level Code System"
Description:  "Allergy Severity codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionCS
* ^experimental = false
* ^caseSensitive = true

* #01 "Swelling and Rash"

ValueSet: NZCentralRegionAllergyReactionValueSet
Id: nzcr-allergy-reaction-value-set
Title: "NZ Central Region - Allergy Severity Level Value Set"
Description:  "Allergy Severity codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionVS
* ^experimental = false

* include codes from system nzcr-allergy-reaction-code-system
