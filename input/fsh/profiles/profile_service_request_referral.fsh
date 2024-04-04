// ServiceRequest profile for Central Region Referral
//   - NZBase doesn't include ServiceRequest (yet)
//   - We have many of our own Terminology codings
//   - Referral is special kind of ServiceRequest  (ie: not Prescription, Lab Order, or Radiology Order)
//
Profile: NZCentralRegionReferral
Parent: ServiceRequest
Description: "Referral flavour of ServiceRequest resource for Te Whatu Ora, Central Region"

* ^derivation = #constraint

* contained 0..0
* implicitRules 0..0
* language 0..0

* identifier 1..* MS  // We must have at least local ID
  * use 1..1 MS
  * system 1..1 MS
  * value 1..1 MS    // RF1-11.1
  * type 1..1 MS
  * type.coding MS
    * code 1..1 MS
    * code = #FILL
    * system 1..1 MS
    * system = $HL7IdentifierTypeCS
    * display 1..1 MS
    * display = "Filler Identifier"

  * period 0..0     // Data not available
  * assigner 0..0   // Data not availale
  * extension 0..0
  * id 0..0

* instantiatesCanonical 0..0
* instantiatesUri 0..0
* encounter 0..0
* basedOn 0..0
* replaces 0..0
* requisition 0..0

* status 1..1 MS
* intent 1..1 MS
* category 0..0 MS  // Implied by the Referral profile of ServiceRequest

* priority 1..1 MS

* doNotPerform 0..0  // N/A for referrals

* code 1..1 MS
* code from nzcr-referral-type-vs (required)
* code.coding MS
  * code 1..1 MS
  * system 1..1 MS
  * display 1..1 MS

* orderDetail 0..0 MS  // N/A for referrals
* quantity[x] 0..0 MS  // N/A for referrals


* occurrence[x] 0..0  // N/A for referrals
* asNeeded[x] 0..0    // N/A for referrals

* subject 1..1 MS
  * type 1..1 MS
  * type = "Patient"
  * reference 0..1 MS
  * identifier 1..1 MS  // We must have only the NHI
    * use 1..1 MS
    * system 1..1 MS
    * system = $NZBaseNHI
    * value 1..1 MS
    * type 1..1 MS
      * coding MS  
        * code 1..1 MS
        * system 1..1 MS
        * system = $HL7IdentifierTypeCS
        * display 1..1 MS
        * version 0..0
        * userSelected 0..0
        * extension 0..0
        * id 0..0
      * text 0..0
      * extension 0..0
      * id 0..0
    * period 0..0     // Data not available
    * assigner 0..0   // Data not available
    * extension 0..0
    * id 0..0
  * display 0..1 MS
  * extension 0..0
  * id 0..0

* authoredOn 1..1 MS

* requester 1..1 MS
  * type 1..1 MS
  * type = "Practitioner"
    * ^short = "Type the reference refers to (e.g. 'Practitioner')"
  * reference 0..1 MS
  * identifier 0..1 MS     //  in PV1-7 segment
    * use 1..1 MS
    * system 1..1 MS
    * system = $NZCentralRegionPASPractitioner
    * type 1..1 MS
      * coding MS  
        * code 1..1 MS
        * code = #LR
        * system 1..1 MS 
        * system = $HL7IdentifierTypeCS
        * display 1..1 MS
        * display = "Local Registry ID"
        * version 0..0
        * userSelected 0..0
        * extension 0..0
        * id 0..0
      * text 0..0
      * extension 0..0
      * id 0..0
    * period 0..0     // Data not available
    * assigner 0..0   // Data not available
    * extension 0..0
    * id 0..0
  * display 0..0
  * extension 0..0
  * id 0..0

* performerType 0..0  // N/A for referral

* performer 1..1 MS   // TODO - check HL7 message definition
  * type 1..1 MS
  * type = "Practitioner"
    * ^short = "Type the reference refers to (e.g. 'Practitioner')"
  * reference 0..1 MS
  * identifier 1..1 MS  // in PV1-8 segment
    * use 1..1 MS
    * system 1..1 MS
    * system = $NZCentralRegionPASPractitioner
    * type 1..1 MS
      * coding MS  
        * code 1..1 MS
        * code = #LR
        * system 1..1 MS 
        * system = $HL7IdentifierTypeCS
        * display 1..1 MS
        * display = "Local Registry ID"
        * version 0..0
        * userSelected 0..0
        * extension 0..0
        * id 0..0
      * text 0..0
      * extension 0..0
      * id 0..0
    * period 0..0     // Data not available
    * assigner 0..0   // Data not available
    * extension 0..0
    * id 0..0
  * display 0..0
  * extension 0..0
  * id 0..0

* locationCode from nzcr-department-vs
* locationCode 1..1 MS
  * coding MS
    * code 1..1 MS
    * system 1..1 MS
    * display 1..1 MS
    * version 0..0
    * userSelected 0..0
    * extension 0..0
    * id 0..0
  * text 0..0
* locationReference 0..0 MS  // We don't have Location resources (yet)


* reasonCode 0..1 MS
* reasonReference 0..0      // We don't have Condition, Observation, DiagnosticReport, DocumentReference) resources


* insurance 0..0            // N/A in NZ
* supportingInfo  0..1      // Maybe
* specimen 0..0             // N/A for referrals
* bodySite 0..0             // N/A for referrals

* note 0..1                 // N/A for referrals
* patientInstruction 0..0   // N/A for referrals
* relevantHistory 0..0      // N/A for referrals

* extension contains 
    nzcr-referral named referral 1..1 MS 

// We have a standard set of fields in all Resource.meta blocks
* meta insert ResourceMetaFields
