CodeSystem:  TwoExtracrMaritalStatusCS
Id: twocr-extra-marital-status-code-system
Title: "Te Whatu Ora Central Region, Marital Status Code System"
Description:  "A few extra Marital Status codes that are in use in Central Region"

* ^experimental = false
* ^caseSensitive = true

* #V "Civil Union" "Person is in a Civil Union"
* #C "de Facto" "Person is in a de Facto relationship"   // Why didn't they just use #T Domestic Partner ? or #C Common law

ValueSet:  TwocrMaritalStatusVS
Id: twocr-marital-status-value-set
Title: "Te Whatu Ora Central Region, Marital Status Value Set"
Description:  "Combined Marital Status value set with values that are in use in Central Region"

* ^experimental = false

* include codes from valueset http://hl7.org/fhir/ValueSet/marital-status
* include codes from system twocr-extra-marital-status-code-system
