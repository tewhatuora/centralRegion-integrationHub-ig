
// Extension URLs from FHIR base
Alias:   $HL7PatientReligion       = http://hl7.org/fhir/StructureDefinition/patient-religion
Alias:   $HL7InterpreterRequired   = http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired

// Code System URLs from FHIR base
Alias:   $IETFLanguageCS             = urn:ietf:bcp:47
Alias:   $HL7NullFlavourCS           = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias:   $HL7IdentifierTypeCS        = http://terminology.hl7.org/CodeSystem/v2-0203
Alias:   $HL7MaritalStatusCS         = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias:   $HL7RelationshipCS          = http://terminology.hl7.org/CodeSystem/v2-0131
Alias:   $HL7PatientRelgionCS        = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation

Alias:   $HL7AllergyTypeCS           = http://hl7.org/fhir/allergy-intolerance-type
Alias:   $HL7AllergyCategoryCS       = http://hl7.org/fhir/allergy-intolerance-category
Alias:   $HL7AllergyCriticalityCS    = http://hl7.org/fhir/allergy-intolerance-criticality
Alias:   $HL7AllergyClinicalStatusCS = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias:   $HL7AllergyVerificationCS   = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

Alias:   $HL7FlagCategoryCS          = http://terminology.hl7.org/CodeSystem/flag-category

Alias:   $HL7ReferralPriorityCS      = http://terminology.hl7.org/CodeSystem/v2-0280
Alias:   $HL7RequestPriorityCS       = http://hl7.org/fhir/request-priority

// Value Set URLs from FHIR base
Alias:   $HL7PatientRelgionVS        = http://terminology.hl7.org/ValueSet/v3-ReligiousAffiliation
Alias:   $HL7AllergyTypeVS           = http://hl7.org/fhir/ValueSet/allergy-intolerance-type
Alias:   $HL7AllergyCategoryVS       = http://hl7.org/fhir/ValueSet/allergy-intolerance-category
Alias:   $HL7AllergyCriticalityVS    = http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality
Alias:   $HL7RequestPriorityVS       = http://hl7.org/fhir/ValueSet/request-priority


// Extension URLs from NZ Base 
Alias:   $NZBasePatient         = http://hl7.org.nz/fhir/StructureDefinition/NzPatient
Alias:   $NZBaseOrganization    = http://hl7.org.nz/fhir/StructureDefinition/NzOrganization
Alias:   $NZBasePractitioner    = http://hl7.org.nz/fhir/StructureDefinition/NzPractitioner
Alias:   $NZBaseDomicileCode    = https://standards.digital.health.nz/ns/domicile-code
Alias:   $NZBaseDHBCode         = https://standards.digital.health.nz/ns/dhb-code
Alias:   $NZBaseNZCitizenship   = http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship
Alias:   $NZBaseNZResidency     = http://hl7.org.nz/fhir/StructureDefinition/nz-residency
Alias:   $NZBaseEthnicity       = http://hl7.org.nz/fhir.StructureDefinition/nz-ethnicity

// Patient Identifier System URLs
Alias:   $NZBaseNHI                       = https://standards.digital.health.nz/ns/nhi-id
Alias:   $NZCentralRegionLocalPatientId   = https://standards.digital.health.nz/ns/central-region/pas-patient-id

// Other resource Identifier System URLs
Alias:   $NZCentralRegionPASPractitioner             = https://standards.digital.health.nz/ns/central-region/pas-practitioner-id
Alias:   $NZCentralRegionPASPractice                 = https://standards.digital.health.nz/ns/central-region/pas-practice-id
Alias:   $NZCentralRegionLocalAlertId                = https://standards.digital.health.nz/ns/central-region/pas-alert-id                // For Flag and AllergyIntolerance
Alias:   $NZCentralRegionLocalClinicalImpressionId   = https://standards.digital.health.nz/ns/central-region/pas-clinical-impression-id  // for Mental Health Legal Status
Alias:   $NZCentralRegionReferralId                  = https://standards.digital.health.nz/ns/central-region/pas-referral-id

// Code System URLs from NZ Base
Alias:   $NZBaseNZCitizenshipCS    = https://standards.digital.health.nz/ns/nz-citizenship-status-code
Alias:   $NZBaseNZResidencyCS      = https://standards.digital.health.nz/ns/nz-residency-code
Alias:   $NZStatsEthnicityLevel4CS = https://standards.digital.health.nz/ns/ethnic-group-level-4-code

Alias:   $NZBaseNZCitizenshipVS    = https://nzhts.digital.health.nz/fhir/ValueSet/nz-citizenship-status-code
Alias:   $NZBaseNZResidencyVS      = https://nzhts.digital.health.nz/fhir/ValueSet/nz-residency-code
Alias:   $NZStatsEthnicityLevel4VS = https://nzhts.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code

// Local URLs for locally defined extensions
Alias:   $NZCentralRegionHL7v2Message          = https://standards.digital.health.nz/ns/central-region/hl7v2-message
Alias:   $NZCentralRegionAlert                 = https://standards.digital.health.nz/ns/central-region/alert
Alias:   $NZCentralRegionMentalHealth          = https://standards.digital.health.nz/ns/central-region/mental-health-status
Alias:   $NZCentralRegionReferral              = https://standards.digital.health.nz/ns/central-region/referral

// Local URLs for locally defined CodeSystems
Alias:   $NZCentralRegionHospitalCS             = https://standards.digital.health.nz/ns/central-region/hospital-code
Alias:   $NZCentralRegionDepartmentCS           = https://standards.digital.health.nz/ns/central-region/-department-code
Alias:   $NZCentralRegionClinicCS               = https://standards.digital.health.nz/ns/central-region/clinic-code

Alias:   $NZStatsEthnicityLevel2CS              = https://standards.digital.health.nz/ns/ethnic-group-level-2-code
Alias:   $NZCentralRegionRawLanguageCS          = https://standards.digital.health.nz/ns/central-region/pas-language         // non-IETF codes
Alias:   $NZCentralRegionProposedLanguageCS     = https://standards.digital.health.nz/ns/central-region/proposed-language    // proposed IETF codes
Alias:   $NZCentralRegionExtraMaritalStatusCS   = https://standards.digital.health.nz/ns/central-region/extra-marital-status
Alias:   $NZCentralRegionResidencyCS            = https://standards.digital.health.nz/ns/central-region/nz-residency-code
Alias:   $NZCentralRegionReligionCS             = https://standards.digital.health.nz/ns/central-region/patient-religion
Alias:   $NZCentralRegionContactRelationshipCS  = https://standards.digital.health.nz/ns/central-region/contact-relationship
Alias:   $NZCentralRegionAlertCategoryCS        = https://standards.digital.health.nz/ns/central-region/alert-category

Alias:   $NZCentralRegionAllergyAlertCodeH1CS   = https://standards.digital.health.nz/ns/central-region/allergy-alert-code-h1
Alias:   $NZCentralRegionAllergyAlertCodeH3CS   = https://standards.digital.health.nz/ns/central-region/allergy-alert-code-h3
Alias:   $NZCentralRegionAllergyAlertCodeA3A4CS   = https://standards.digital.health.nz/ns/central-region/allergy-alert-code-a3-a4
Alias:   $NZCentralRegionAllergyReactionA3A4CS  = https://standards.digital.health.nz/ns/central-region/allergy-reaction-a3-a4
Alias:   $NZCentralRegionAllergyReactionH1H3CS  = https://standards.digital.health.nz/ns/central-region/allergy-reaction-h1-h3

Alias:   $NZCentralRegionFlagAlertCodeDACS      = https://standards.digital.health.nz/ns/central-region/flag-alert-code-da
Alias:   $NZCentralRegionFlagAlertCodeLSCS      = https://standards.digital.health.nz/ns/central-region/flag-alert-code-ls
Alias:   $NZCentralRegionFlagAlertCodeH2CS      = https://standards.digital.health.nz/ns/central-region/flag-alert-code-h2
Alias:   $NZCentralRegionFlagAlertCodeH4CS      = https://standards.digital.health.nz/ns/central-region/flag-alert-code-h4
Alias:   $NZCentralRegionFlagAlertCodeH5CS      = https://standards.digital.health.nz/ns/central-region/flag-alert-code-h5
Alias:   $NZCentralRegionFlagAlertCodeH6CS      = https://standards.digital.health.nz/ns/central-region/flag-alert-code-h6
Alias:   $NZCentralRegionFlagAlertCodeH7CS      = https://standards.digital.health.nz/ns/central-region/flag-alert-code-h7
Alias:   $NZCentralRegionFlagAlertCodeH8CS      = https://standards.digital.health.nz/ns/central-region/flag-alert-code-h8

Alias:   $NZCentralRegionMentalHealthLegalStatusCS    = https://standards.digital.health.nz/ns/central-region/mental-health-legal-status
Alias:   $NZCentralRegionMentalHealthReviewStatusCS   = https://standards.digital.health.nz/ns/central-region/mental-health-review-status
Alias:   $NZCentralRegionMentalHealthReviewLocationCS = https://standards.digital.health.nz/ns/central-region/mental-health-review-location
Alias:   $NZCentralRegionMentalHealthCourtTypeCS      = https://standards.digital.health.nz/ns/central-region/mental-health-court-type

Alias:   $NZCentralRegionReferralStatusCS          = https://standards.digital.health.nz/ns/central-region/pas-referral-status
Alias:   $NZCentralRegionReferralPriorityCS        = https://standards.digital.health.nz/ns/central-region/pas-referral-priority
Alias:   $NZCentralRegionReferralTypeRICS          = https://standards.digital.health.nz/ns/central-region/referral-type-ri
Alias:   $NZCentralRegionReferralTypeWUCS          = https://standards.digital.health.nz/ns/central-region/referral-type-wu      // essentially waiting list referral departments
Alias:   $NZCentralRegionReferralReasonCS          = https://standards.digital.health.nz/ns/central-region/referral-reason
Alias:   $NZCentralRegionReferralSiteCS            = https://standards.digital.health.nz/ns/central-region/referral-site         // (Location ??)
Alias:   $NZCentralRegionReferralSourceCS          = https://standards.digital.health.nz/ns/central-region/referral-source
Alias:   $NZCentralRegionHealthPurchaserCS         = https://standards.digital.health.nz/ns/central-region/health-purchaser

// Local URIs for various ValueSets
Alias:   $NZCentralRegionHospitalVS                = https://standards.digital.health.nz/fhir/central-region/ValueSet-hospital-code
Alias:   $NZCentralRegionDepartmentVS              = https://standards.digital.health.nz/fhir/central-region/ValueSet-department-code
Alias:   $NZCentralRegionClinicVS                  = https://standards.digital.health.nz/fhir/central-region/ValueSet-clinic-code

Alias:   $NZCentralRegionEthnicityLevel2VS         = https://standards.digital.health.nz/fhir/central-region/ValueSet-ethnicity-level-2
Alias:   $NZCentralRegionMaritalStatusVS           = https://standards.digital.health.nz/fhir/central-region/ValueSet-marital-status
Alias:   $NZCentralRegionResidencyVS               = https://standards.digital.health.nz/fhir/central-region/ValueSet-nz-residency
Alias:   $NZCentralRegionReligionVS                = https://standards.digital.health.nz/fhir/central-region/ValueSet-patient-religion
Alias:   $NZCentralRegionContactRelationshipVS     = https://standards.digital.health.nz/fhir/central-region/ValueSet-contact-relationship
Alias:   $NZCentralRegionRawLanguageVS             = https://standards.digital.health.nz/fhir/central-region/ValueSet-raw-language         // the raw language codes we start with
Alias:   $NZCentralRegionLanguageVS                = https://standards.digital.health.nz/fhir/central-region/ValueSet-language             // subset of IETF codes we use

Alias:   $NZCentralRegionFlagAlertCategoryVS       = https://standards.digital.health.nz/fhir/central-region/ValueSet-alert-type-flag
Alias:   $NZCentralRegionAllergyAlertCategoryVS    = https://standards.digital.health.nz/fhir/central-region/ValueSet-alert-type-allergy
Alias:   $NZCentralRegionAllergyAlertCodeVS        = https://standards.digital.health.nz/fhir/central-region/ValueSet-allergy-alert-code
Alias:   $NZCentralRegionAllergyReactionVS         = https://standards.digital.health.nz/fhir/central-region/ValueSet-allergy-reaction
Alias:   $NZCentralRegionFlagAlertCodeVS           = https://standards.digital.health.nz/fhir/central-region/ValueSet-flag-alert-code

Alias:   $NZCentralRegionReferralStatusVS          = https://standards.digital.health.nz/fhir/central-region/ValueSet-referral-status
Alias:   $NZCentralRegionReferralPriorityVS        = https://standards.digital.health.nz/fhir/central-region/ValueSet-referral-priority
Alias:   $NZCentralRegionReferralTypeVS            = https://standards.digital.health.nz/fhir/central-region/ValueSet-referral-type
Alias:   $NZCentralRegionReferralReasonVS          = https://standards.digital.health.nz/fhir/central-region/ValueSet-referral-reason
Alias:   $NZCentralRegionReferralSiteVS            = https://standards.digital.health.nz/fhir/central-region/ValueSet-referral-site
Alias:   $NZCentralRegionReferralSourceVS          = https://standards.digital.health.nz/fhir/central-region/ValueSet-referral-source
Alias:   $NZCentralRegionHealthPurchaserVS         = https://standards.digital.health.nz/fhir/central-region/ValueSet-health-purchaser

Alias:   $NZCentralRegionMentalHealthLegalStatusVS    = https://standards.digital.health.nz/fhir/central-region/ValueSet-mental-health-legal-status
Alias:   $NZCentralRegionMentalHealthReviewStatusVS   = https://standards.digital.health.nz/fhir/central-region/ValueSet-mental-health-review-status
Alias:   $NZCentralRegionMentalHealthReviewLocationVS = https://standards.digital.health.nz/fhir/central-region/ValueSet-mental-health-review-location
Alias:   $NZCentralRegionMentalHealthCourtTypeVS      = https://standards.digital.health.nz/fhir/central-region/ValueSet-mental-health-court-type


// Local URIs for ConceptMaps
Alias:   $NZCentralRegionLanguageConceptMap                     = https://standards.digital.health.nz/fhir/central-region/ConceptMap-language
Alias:   $NZCentralRegionEthnicityConceptMap                    = https://standards.digital.health.nz/fhir/central-region/ConceptMap-ethnicity
Alias:   $NZCentralRegionReligionConceptMap                     = https://standards.digital.health.nz/fhir/central-region/ConceptMap-religion
Alias:   $NZCentralRegionResidencyConceptMap                    = https://standards.digital.health.nz/fhir/central-region/ConceptMap-nz-residency
Alias:   $NZCentralRegionReferralPriorityConceptMap             = https://standards.digital.health.nz/fhir/central-region/ConceptMap-referral-priority

Alias:   $NZCentralRegionAllergyReactionTypeConceptMap          = https://standards.digital.health.nz/fhir/central-region/ConceptMap-allergy-reaction-type
Alias:   $NZCentralRegionAllergyReactionCategoryConceptMap      = https://standards.digital.health.nz/fhir/central-region/ConceptMap-allergy-reaction-category
Alias:   $NZCentralRegionAllergyReactionCriticalityConceptMap   = https://standards.digital.health.nz/fhir/central-region/ConceptMap-allergy-reaction-criticality

Alias:   $NZCentralRegionFlagCategoryConceptMap                 = https://standards.digital.health.nz/fhir/central-region/ConceptMap-flag-category
