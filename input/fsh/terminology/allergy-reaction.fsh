CodeSystem:  NZCentralRegionAllergyReactionA3A4CodeSystem
Id: nzcr-allergy-reaction-a3a4-cs
Title: "NZ Central Region - Allergy Reaction (A3, A4) Code System"
Description:  "Allergy Reaction codes for categories A3 & A4; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionA3A4CS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #R01  "Bee stings"
* #R02  "Hay fever"
* #R03  "Not known"
* #R04  "Nuts"
* #R05  "Medication"


CodeSystem:  NZCentralRegionAllergyReactionH1H3CodeSystem
Id: nzcr-allergy-reaction-h1h3-cs
Title: "NZ Central Region - Allergy Reaction (H1, H3) Code System"
Description:  "Allergy Reaction codes for categories H1 & H3; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionH1H3CS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #R01  "Drg anaphylaxis"
* #R02  "drug allergy"
* #R03  "drug intolerance"
* #R04  "food anaphylaxis"
* #R05  "food allergy"
* #R06  "food intolerance"
* #R07  "other anaphylaxis"
* #R08  "other allergy"
* #R09  "other intolerance"




ValueSet: NZCentralRegionAllergyReactionValueSet
Id: nzcr-allergy-reaction-vs
Title: "NZ Central Region - Allergy Reaction Value Set"
Description:  "Allergy Reaction codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionAllergyReactionVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-allergy-reaction-a3a4-cs
* include codes from system nzcr-allergy-reaction-h1h3-cs



// FHIR Allergy Type Codes from WebPAS Allergy Reaction Codes
Instance: nzcr-allergy-type-map
InstanceOf: ConceptMap
Usage: #definition

Description: "Concept map mapping allergy reaction codes ex. WebPAS to FHIR allergy type codes. Added complexity as we have codes from two different code-systems"

* name = "NZCRAllergyReactionTypeConceptMap"
* title = "NZ Central Region Allergy Reaction to Type Concept Map"
* description = "Concept map mapping allergy reaction codes ex. WebPAS to FHIR allergy type codes"

* url = $NZCentralRegionAllergyReactionTypeConceptMap
* status = #active
* experimental = false
* purpose = "Translates allergy reaction codes used in WebPAS to FHIR allergy type codes"
* status = #active
* sourceUri = $NZCentralRegionAllergyReactionVS    // Source ValueSet
* targetUri = $HL7AllergyTypeVS                    // Target ValueSet
* group[+]                                         // Separate Group for each Source/Target CodeSystem tuple
  * source = $NZCentralRegionAllergyReactionA3A4CS
  * target = $HL7AllergyTypeCS

* insert cmapEntry(R01, "Bee stings", "allergy", "Allergy")
* insert cmapEntry(R02, "Hay fever",  "allergy", "Allergy")
* insert cmapEntry(R03, "Not known",  "allergy", "Allergy")   // for wan of an Unknown value
* insert cmapEntry(R04, "Nuts",       "allergy", "Allergy")
* insert cmapEntry(R05, "Medication", "allergy", "Allergy")

* group[+]                                                    // Separate Group for each Source/Target CodeSystem
  * source = $NZCentralRegionAllergyReactionH1H3CS
  * target = $HL7AllergyTypeCS

* insert cmapEntry(R01, "Drg anaphylaxis",   "allergy", "Allergy")
* insert cmapEntry(R02, "drug allergy",      "allergy", "Allergy")
* insert cmapEntry(R03, "drug intolerance",  "intolerance", "Intolerance")
* insert cmapEntry(R04, "food anaphylaxis",  "allergy", "Allergy")
* insert cmapEntry(R05, "food allergy",      "allergy", "Allergy")
* insert cmapEntry(R06, "food intolerance",  "intolerance", "Intolerance")
* insert cmapEntry(R07, "other anaphylaxis", "allergy", "Allergy")
* insert cmapEntry(R08,	"other allergy",     "allergy", "Allergy")
* insert cmapEntry(R09,	"other intolerance", "intolerance", "Intolerance")




// FHIR Allergy Category Codes from WebPAS Allergy Reaction Codes
Instance: nzcr-allergy-category-map
InstanceOf: ConceptMap
Usage: #definition

Description: "Concept map mapping allergy reaction codes ex. WebPAS to FHIR allergy category codes. Added complexity as we have codes from two different code-systems"

* name = "NZCRAllergyReactionCategoryConceptMap"
* title = "NZ Central Region Allergy Reaction to Category Concept Map"
* description = "Concept map mapping allergy reaction codes ex. WebPAS to FHIR allergy category codes"

* url = $NZCentralRegionAllergyReactionCategoryConceptMap
* status = #active
* experimental = false
* purpose = "Translates allergy reaction codes used in WebPAS to FHIR allergy category codes"
* sourceUri = $NZCentralRegionAllergyReactionVS    // Source ValueSet
* targetUri = $HL7AllergyCategoryVS                // Target ValueSet
* group[+]                                         // Separate Group for each Source/Target CodeSystem tuple
  * source = $NZCentralRegionAllergyReactionA3A4CS
  * target = $HL7AllergyCategoryCS

* insert cmapEntry(R01, "Bee stings", "environment", "Environment")
* insert cmapEntry(R02, "Hay fever",  "environment", "Environment")  // Pollen in the environment
* insert cmapEntry(R03, "Not known",  "environment", "Environment")  // Not known to be Food, Medication or Biologic
* insert cmapEntry(R04, "Nuts",       "food", "Food")
* insert cmapEntry(R05, "Medication", "medication", "Medication")

* group[+]                                        // Separate Group for each Source/Target CodeSystem
  * source = $NZCentralRegionAllergyReactionH1H3CS
  * target = $HL7AllergyCategoryCS

* insert cmapEntry(R01, "Drg anaphylaxis",   "medication", "Medication")
* insert cmapEntry(R02, "drug allergy",      "medication", "Medication")
* insert cmapEntry(R03, "drug intolerance",  "medication", "Medication")
* insert cmapEntry(R04, "food anaphylaxis",  "food", "Food")
* insert cmapEntry(R05, "food allergy",      "food", "Food")
* insert cmapEntry(R06, "food intolerance",  "food", "Food")
* insert cmapEntry(R07, "other anaphylaxis", "environment", "Environment")
* insert cmapEntry(R08,	"other allergy",     "environment", "Environment")
* insert cmapEntry(R09,	"other intolerance", "environment", "Environment")



// FHIR allergy criticality Codes from WebPAS Allergy Reaction Codes
Instance: nzcr-allergy-criticality-map
InstanceOf: ConceptMap
Usage: #definition

Description: "Concept map mapping allergy reaction codes ex. WebPAS to FHIR allergy criticality codes. Added complexity as we have codes from two different code-systems"

* name = "NZCRAllergyReactionCriticalityConceptMap"
* title = "NZ Central Region Allergy Reaction to Criticality Concept Map"
* description = "Concept map mapping allergy reaction codes ex. WebPAS to FHIR allergy criticality codes"

* url = $NZCentralRegionAllergyReactionCriticalityConceptMap
* status = #active
* experimental = false
* purpose = "Translates allergy reaction codes used in WebPAS to FHIR allergy criticality codes"
* sourceUri = $NZCentralRegionAllergyReactionVS    // Source ValueSet
* targetUri = $HL7AllergyCriticalityVS             // Target ValueSet
* group[+]                                         // Separate Group for each Source/Target CodeSystem tuple
  * source = $NZCentralRegionAllergyReactionA3A4CS
  * target = $HL7AllergyCriticalityCS

* insert cmapEntry(R01, "Bee stings", "unable-to-assess", "Unable to Assess Risk")
* insert cmapEntry(R02, "Hay fever",  "unable-to-assess", "Unable to Assess Risk")
* insert cmapEntry(R03, "Not known",  "unable-to-assess", "Unable to Assess Risk")
* insert cmapEntry(R04, "Nuts",       "unable-to-assess", "Unable to Assess Risk")
* insert cmapEntry(R05, "Medication", "unable-to-assess", "Unable to Assess Risk")

* group[+]                                        // Separate Group for each Source/Target CodeSystem
  * source = $NZCentralRegionAllergyReactionH1H3CS
  * target = $HL7AllergyCriticalityCS

* insert cmapEntry(R01, "Drg anaphylaxis",   "high", "High Risk")
* insert cmapEntry(R02, "drug allergy",      "low", "Low Risk")
* insert cmapEntry(R03, "drug intolerance",  "low", "Low Risk")
* insert cmapEntry(R04, "food anaphylaxis",  "high", "High Risk")
* insert cmapEntry(R05, "food allergy",      "low", "Low Risk")
* insert cmapEntry(R06, "food intolerance",  "low", "Low Risk")
* insert cmapEntry(R07, "other anaphylaxis", "high", "High Risk")
* insert cmapEntry(R08,	"other allergy",     "low", "Low Risk")
* insert cmapEntry(R09,	"other intolerance", "low", "Low Risk")
