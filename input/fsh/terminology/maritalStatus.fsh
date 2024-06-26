CodeSystem:  NZCentralRegionExtraMaritalStatusCodeSystem
Id: nzcr-extra-marital-status-cs
Title: "NZ Central Region - Marital Status Code System"
Description:  "A few extra Marital Status codes that are in use in Central Region"

* ^url = $NZCentralRegionExtraMaritalStatusCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #X "Separated" "Person is Separated, but not 'Legally Separated'"
* #V "Civil Union" "Person is in a Civil Union"
* #C "de Facto" "Person is in a de Facto relationship"   // Why didn't they just use #T Domestic Partner ? or #C Common law
* #F "De facto" "Person is in a de Facto relationship"   // C from DT1 and F from PROD ... go figure

ValueSet: NZCentralRegionMaritalStatusValueSet
Id: nzcr-marital-status-vs
Title: "NZ Central Region - Marital Status Value Set"
Description:  "Combined Marital Status value set with values that are in use in Central Region"

* ^url = $NZCentralRegionMaritalStatusVS
* ^status = #active
* ^experimental = false

* include codes from valueset http://hl7.org/fhir/ValueSet/marital-status
* include codes from system nzcr-extra-marital-status-cs
