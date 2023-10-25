
Change history for this FHIR Implementation Guide is as follows: 

### v0.6.1
25-Oct-2023

* Added [HL7 v2 Referral Priority](https://terminology.hl7.org/CodeSystem-v2-0280.html) code system to [Referral Priority Value Set](./ValueSet-nzcr-referral-priority-vs.html) and the matching [Concept Map](./ConceptMap-nzcr-referral-priority-fhir-map.html) as we have codes from multiple systems in use.

### v0.6.0
29-Sep-2023

* Added [Allergy Reaction](./ValueSet-nzcr-allergy-reaction-vs.html) code system, to record the nature of allergic reaction
  along with concept maps to provide suitable FHIR code fields:

  * [Allergy Category](./ConceptMap-nzcr-allergy-category-map.html) concept map for [AllergyIntolerance Category](http://hl7.org/fhir/R4/valueset-allergy-intolerance-category.html) codes
  * [Allergy Type](./ConceptMap-nzcr-allergy-type-map.html) concept map for [AllergyIntolerance Type](http://hl7.org/fhir/R4/valueset-allergy-intolerance-type.html)
  * [Allergy Criticality](./ConceptMap-nzcr-allergy-criticality-map.html) concept map for [AllergyIntolerance Criticality](http://hl7.org/fhir/R4/valueset-allergy-intolerance-criticality.html)

* Switched from using the `ClinicalImpression.summary` field to using the `ClinicalImpression.note` field to hold the comments recorded with the alert.

* Added [Developer Guide](./DeveloperGuide.html) outlining the process for provisioning API clients, and obtaining an OAuth access token
  to authenticate subsequent FHIR API calls.

* Added this release history page

### v0.5.0

* The first of the almost useful editions of the Integration Guide.
