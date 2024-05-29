CodeSystem:  NZCentralRegionReferralPriorityCodeSystem
Id: nzcr-referral-priority-cs
Title: "NZ Central Region - Referral Priority Code System"
Description:  "Referral Priority codes; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralPriorityCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

// Values defined by webPAS
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

// Values defined by RHIP-ReferralStatus
* #AR   "Active review"
* #PLP  "Planned procedure"
* #STP  "Staged procedure"
* #U    "Urgent"
* #S    "Semi-urgent"
* #A    "ASAP"
* #R    "Routine"

ValueSet: NZCentralRegionReferralPriorityValueSet
Id: nzcr-referral-priority-vs
Title: "NZ Central Region - Referral Priority Value Set"
Description:  "Referral Priority codes ex. WebPAS in NZ Central Region, alongwith HL7 v2 defined codes from Table 0280"

* ^url = $NZCentralRegionReferralPriorityVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-referral-priority-cs
* include codes from system $HL7ReferralPriorityCS


// WebPAS referral priority codes are different from FHIR Referral Priority codes...
Instance: nzcr-referral-priority-fhir-map
InstanceOf: ConceptMap
Usage: #definition

Description: "Concept map mapping referral priority codes ex. WebPAS to FHIR ServiceRequest priority codes"

* name = "NZCRReferralPriorityConceptMap"
* title = "NZ Central Region Referral Priority Concept Map"
* description = "Concept map mapping referral priority codes ex. WebPAS to FHIR ServiceRequest priority codes"

* url = $NZCentralRegionReferralPriorityConceptMap
* status = #active
* experimental = false
* purpose = "Translates referral priority codes used in WebPAS to more recognised FHIR ServiceLEvel priority codes"
* sourceUri = $NZCentralRegionReferralPriorityVS   // Source ValueSet
* targetUri = $HL7RequestPriorityVS                // Target ValueSet
* group[+]                                         // Separate Group for each Source/Target CodeSystem tuple - this time WebPAS defined codes
  * source = $NZCentralRegionReferralPriorityCS
  * target = $HL7RequestPriorityCS

// values from webPAS
* insert cmapEntry(IMM,  "1 Immediate",             stat,    "STAT")
* insert cmapEntry(URG,  "2 Urgent",                asap,    "ASAP")
* insert cmapEntry(SEM,  "3 Semi-urgent",           urgent,  "Urgent")
* insert cmapEntry(ROU,  "4 Routine",               routine, "Routine")
* insert cmapEntry(LOW,  "5 Low Priority",          routine, "Routine")  // FHIR only has 4 priority levels
* insert cmapEntry(WAI,  "7 Waiting for triage",    routine, "Routine")
* insert cmapEntry(TES,	 "6 Pending test",          routine, "Routine")
* insert cmapEntry(NOT,	 "8 Not seen",              routine, "Routine")
* insert cmapEntry(OVR,	 "Clinical override",       routine, "Routine")
* insert cmapEntry(TOS,	 "Transfr othr service",    routine, "Routine")
* insert cmapEntry(NPR,  "Not prioritised",         routine, "Routine")

// values from RHIP-ReferralStatus
* insert cmapEntry(AR,   "Active review",           routine, "Routine")
* insert cmapEntry(PLP,  "Planned procedure",       routine, "Routine")
* insert cmapEntry(STP,  "Staged procedure",        routine, "Routine")

* insert cmapEntry(A,    "ASAP",                    stat,    "STAT")
* insert cmapEntry(U,    "Urgent",                  asap,    "ASAP")
* insert cmapEntry(S,    "Semi-urgent",             urgent,  "Urgent")
* insert cmapEntry(R,    "Routine",                 routine, "Routine")

* group[+]                                         // Separate Group for each Source/Target CodeSystem tuple - this time HL7 v2 codes
  * source = $HL7ReferralPriorityCS
  * target = $HL7RequestPriorityCS

* insert cmapEntry(S,  "STAT",             stat,    "STAT")
* insert cmapEntry(A,  "ASAP",             asap,    "ASAP")
* insert cmapEntry(R,  "Routine",          routine, "Routine")

