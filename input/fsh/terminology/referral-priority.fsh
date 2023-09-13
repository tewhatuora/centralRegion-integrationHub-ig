CodeSystem:  NZCentralRegionReferralPriorityCodeSystem
Id: nzcr-referral-priority-cs
Title: "NZ Central Region - Referral Priority Code System"
Description:  "Referral Priority codes; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralPriorityCS
* ^experimental = false
* ^caseSensitive = true

* #NPR	"Not prioritised"
* #IMM	"1 Immediate"
* #URG	"2 Urgent"
* #SEM	"3 Semi-urgent"
* #ROU	"4 Routine"
* #LOW	"5 Low priority"
* #TES	"6 Pending test"
* #WAI	"7 Waiting for triage"
* #NOT	"8 Not seen"
* #OVR	"Clinical override"
* #TOS	"Transfr othr service"


ValueSet: NZCentralRegionReferralPriorityValueSet
Id: nzcr-referral-priority-vs
Title: "NZ Central Region - Referral Priority Value Set"
Description:  "Referral Priority codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralPriorityVS
* ^experimental = false

* include codes from system nzcr-referral-priority-cs


// WebPAS referral priority codes are different from FHIR Referral Priority codes...
Instance: nzcr-referral-priority-fhir-map
InstanceOf: ConceptMap
Usage: #definition

Description: "Concept map mapping referral priority codes ex. WebPAS to FHIR ServiceRequest priority codes"

* name = "NZCRReferralPriorityConceptMap"
* title = "NZ Central Region Referral Priority Concept Map"
* description = "Concept map mapping referral priority codes ex. WebPAS to FHIR ServiceRequest priority codes"

* url = $NZCentralRegionReferralPriorityConceptMap
* experimental = false
* purpose = "Translates referral priority codes used in WebPAS to more recognised FHIR ServiceLEvel priority codes"
* status = #active
* sourceUri = $NZCentralRegionReferralPriorityVS   // Source ValueSet
* targetUri = $HL7RequestPriorityVS                // Target ValueSet
* group[+]                                         // Separate Group for each Source/Target CodeSystem tuple
  * source = $NZCentralRegionReferralPriorityCS
  * target = $HL7RequestPriorityCS

* insert cmapEntry(IMM,  "1 Immediate",             stat,    "STAT")
* insert cmapEntry(URG,  "2 Urgent",                asap,    "ASAP")
* insert cmapEntry(SEM,  "3 Semi-urgent",           urgent,  "Urgent")
* insert cmapEntry(ROU,  "4 Routine",               routine, "Routine")
* insert cmapEntry(LOW,  "5 Low Priority",          routine, "Routine")  // FHIR only has 4 priority levels
