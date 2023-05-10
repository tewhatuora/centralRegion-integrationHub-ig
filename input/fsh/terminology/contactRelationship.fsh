CodeSystem:  NZCentralRegionContactRelationshipCodeSystem
Id: nzcr-contact-relationship-code-system
Title: "NZ Central Region - NZ ContactRelationship Code System"
Description:  "More granular ContactRelationship codes ex. WebPAS in NZ Central Region.

This codeset is to be used alongside the HL7 defined general relationship codeset in http://hl7.org/fhir/R4/valueset-patient-contactrelationship.html"

* ^url = $NZCentralRegionContactRelationshipCS
* ^experimental = false
* ^caseSensitive = true

* #1	"Mother"
* #2	"Father"
* #3	"Sister"
* #4	"Brother"
* #5	"Son"
* #6	"Daughter"
* #7	"Uncle"
* #8	"Aunt"
* #9	"Nephew"
* #10	"Niece"
* #11	"Cousin"
* #12	"Grandfather"
* #13	"Grandmother"
* #14	"Employer"
* #15	"Other"
* #16	"Spouse"
* #17	"Partner"
* #18	"De facto"
* #19	"In-law"
* #20	"Legal guardian (PPPR Act)"
* #21	"Dept of Correction (NZ)"
* #22	"NZISS"
* #23	"Oranga Tamariki"
* #24	"Friend"
* #25	"Unknown"
* #26	"Grandchild"
* #27	"Parents"
* #28	"Caregiver"
* #29	"Grandparents"
* #30	"Civil union"
* #31	"Solicitor/Lawyer"
* #32	"Ex-partner"
* #33	"EPOA"   // Enduring Power of Attorney


ValueSet: NZCentralRegionContactRelationshipValueSet
Id: nzcr-contact-relationship-value-set
Title: "NZ Central Region - NZ ContactRelationship Value Set"
Description:  "NZ ContactRelationship Codes ex. WebPAS in NZ Central Region

This codeset is to be used alongside the HL7 defined general relationship codeset http://terminology.hl7.org/CodeSystem/v2-0131"

* ^url = $NZCentralRegionContactRelationshipVS
* ^experimental = false

* include codes from system nzcr-contact-relationship-code-system
