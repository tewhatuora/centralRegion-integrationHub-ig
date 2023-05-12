//
///   Stolen from NZBase github repo - as it's not in a released IG yet
//
Alias: $nz-residency-cs = https://standards.digital.health.nz/ns/nz-residency-code
Alias: $nz-residency-vs = https://nzhts.digital.health.nz/fhir/ValueSet/nz-residency-code
Alias: $information-source-vs = https://nzhts.digital.health.nz/fhir/ValueSet/information-source-code

CodeSystem: NZResidency
Id: nz-residency
Title: "NZ Residency status"
Description: "NZ Residency status"
* ^url = $nz-residency-cs
* ^caseSensitive = true
* ^version = "1.1.0"
* ^experimental = false

* #yes "Permanent Resident" "Use this status if the person holds a residence class visa"
* #no "Not a Permanent Resident" "Use this status for a person who is a NZ Citizen or does not hold a residence class visa"
* #unknown "Unknown" "use this status if the residency status of the person cannot be determined or is unknown"



ValueSet: NZResidency
Id: nz-residency
Title: "NZ Residency status"
Description: "Is the person a NZ resident"

* ^url = $nz-residency-vs
* ^version = "1.1.0"
* ^experimental = false

* codes from system $nz-residency-cs



Extension: NZResidency
Id: nz-residency
Title: "NZ Residency"
Description: "NZ Residency status"

/*
Description: """
NZ Residency status indicates that a person holds a New Zealand residence class visa.
A residence class visa' includes both a resident visa and a permanent resident visa.

'Residence class visa' is the wording used in Section B3(1) of the 
[Eligibility Direction](https://www.health.govt.nz/system/files/documents/pages/eligibility-direction-2011.pdf)

A person who holds a residence class visa is eligible to receive services funded under the Act”.

"""

*/

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-residency"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #active
* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
    status 0..1 and
    source 0..1     

* extension[status] ^definition = "Residency Status"
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from $nz-residency-vs (preferred)

* extension[source] ^definition = "The source of information concerning the residency"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from $information-source-vs (preferred)
