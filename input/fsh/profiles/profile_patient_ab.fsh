// Patient profile for Central Region
//   - We don't support many fields from NZBasePatient
//   - We have many of our own Terminology codings
//
//   We want to use the AdditionalBinding extension
Profile: NZCentralRegionPatientAdditionalBinding
Parent: NZCentralRegionPatient
Description: "Patient resource for Te Whatu Ora, Central Region, with additional bindings where multple codes are required"

* ^derivation = #constraint


// ethnicity requires codes from two ValueSets
* extension[ethnicity].valueCodeableConcept from $NZStatsEthnicityLevel4VS (required)
* extension[ethnicity].valueCodeableConcept insert AdditionalBindingByExtension(#required, $NZCentralRegionEthnicityLevel2VS)


// NZ Base v2.0.0 - has defined the Residency but not added it to the NZPatient profile
* extension contains $NZBaseNZResidency named nz-residency 0..1 MS
* extension[nz-residency]
  * extension[status].valueCodeableConcept from $NZBaseNZResidencyVS (required)
  * extension[status].valueCodeableConcept insert AdditionalBindingByExtension(#required, $NZCentralRegionResidencyVS)


// religion requires codes from two ValueSets
* extension contains $HL7PatientReligion named patient-religion 0..1 MS
* extension[patient-religion].valueCodeableConcept from $HL7PatientRelgionVS
* extension[patient-religion].valueCodeableConcept insert AdditionalBindingByExtension(#required, $NZCentralRegionReligionVS)


// not using the local re-creations
* extension[nzcrEthnicity] 0..0
* extension[nzcrResidency] 0..0
* extension[nzcrReligion] 0..0


// communication.language requires codes from two ValueSets
* communication.language from $IETFLanguageVS
* communication.language insert AdditionalBindingByExtension(#required, $NZCentralRegionRawLanguageVS)

// contact.relationship requires codes from two ValueSets
* contact.relationship from $HL7RelationshipVS
* contact.relationship insert AdditionalBindingByExtension(#required, $NZCentralRegionContactRelationshipVS)
