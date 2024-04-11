//
///   Stolen from NZBase github repo - as we gotta do our own CentralRegion edition allowing multiple codings...
//
Alias: $nz-residency-cs = https://standards.digital.health.nz/ns/nz-residency-code
Alias: $nz-residency-vs = https://nzhts.digital.health.nz/fhir/ValueSet/nz-residency-code
Alias: $information-source-vs = https://nzhts.digital.health.nz/fhir/ValueSet/information-source-code


Extension: NZCentralRegionResidency
Id: nzcr-residency
Title: "NZ Residency (Central Region Edition)"
Description: "NZ Residency status, permits multiple codings from different CodeSystems"

/*
Description: """
NZ Residency status indicates that a person holds a New Zealand residence class visa.
A residence class visa' includes both a resident visa and a permanent resident visa.

'Residence class visa' is the wording used in Section B3(1) of the 
[Eligibility Direction](https://www.health.govt.nz/system/files/documents/pages/eligibility-direction-2011.pdf)

A person who holds a residence class visa is eligible to receive services funded under the Act”.

"""

*/

* ^url = $NZCentralRegionResidency
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^status = #active
* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
    status 0..1 and
    source 0..1     

* extension[status] ^definition = "Residency Status"
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from nzcr-combined-residency-vs (required)

* extension[source] ^definition = "The source of information concerning the residency"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from $information-source-vs (preferred)
