CodeSystem:  NZCentralRegionExtraMaritalStatusCodeSystem
Id: nzcr-extra-marital-status-code-system
Title: "NZ Central Region - Marital Status Code System"
Description:  "A few extra Marital Status codes that are in use in Central Region"

* ^url = $NZCentralRegionExtraMaritalStatusCS
* ^experimental = false
* ^caseSensitive = true

* #V "Civil Union" "Person is in a Civil Union"
* #C "de Facto" "Person is in a de Facto relationship"   // Why didn't they just use #T Domestic Partner ? or #C Common law

ValueSet: NZCentralRegionMaritalStatusValueSet
Id: nzcr-marital-status-value-set
Title: "NZ Central Region - Marital Status Value Set"
Description:  "Combined Marital Status value set with values that are in use in Central Region"

* ^url = $NZCentralRegionMaritalStatusVS
* ^experimental = false

* include codes from valueset http://hl7.org/fhir/ValueSet/marital-status
* include codes from system nzcr-extra-marital-status-code-system
