Instance: CentralRegionIntegrationHubCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition

* name = "NZCentralRegionIntegrationHubCapabilityStatement"
* title = "Te Whatu Ora, Central Region Integration Hub Capability Statement"
* status = #active
* date = "2023-02-14"
* publisher = "Te Whatu Ora, Te Pae Hauora o Ruahine o Tararua MidCentral"
* description = "Te Whatu Ora, Central Region Integration Hub FHIR API"
* kind = #instance
* implementation.description = "Te Whatu Ora, Central Region Integration Hub FHIR API"
* implementation.url = "https://fhir.ap1.digital.health.nz/R4"
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server
* rest.security.cors = true
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension.extension[0].url = "token"
* rest.security.extension.extension[=].valueUri = "https://stuart.geek.nz/oauth2/token"
* rest.security.extension.extension[+].url = "authorize"
* rest.security.extension.extension[=].valueUri = "https://stuart.geek.nz/oauth2/authorize"

* rest.resource[0].type = #Patient
* rest.resource[=].profile = Canonical(NZCentralRegionPatient)
* rest.resource[=].interaction[+].code = #read
// * rest.resource[=].interaction[+].code = #create
// * rest.resource[=].interaction[+].code = #update
// * rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchParam[0].name = "family"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A portion of the Patient's Family name"
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A portion of the Patient's Given name(s)"


* rest.resource[+].type = #AllergyIntolerance
* rest.resource[=].profile = Canonical(NZCentralRegionAllergyIntolerance)
* rest.resource[=].interaction[0].code = #read
// * rest.resource[=].interaction[+].code = #create
// * rest.resource[=].interaction[+].code = #update
// * rest.resource[=].interaction[+].code = #delete
// * rest.resource[=].interaction[+].code = #vread
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].versioning = #versioned
* rest.resource[=].readHistory = false
* rest.resource[=].updateCreate = false
* rest.resource[=].conditionalCreate = false
* rest.resource[=].conditionalRead = #not-supported
* rest.resource[=].conditionalUpdate = false
* rest.resource[=].conditionalDelete = #not-supported
* rest.resource[=].searchInclude[0] = "*"
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who the sensitivity is for \n [Patient](http://hl7.org/fhir/R4/patient.html)"
* rest.resource[=].searchParam[+].name = "recorder"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-recorder"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who recorded the sensitivity \n [AllergyIntolerance.recorder](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.recorder)"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code that identifies the allergy or intolerance \n [AllergyIntolerance Code ValueSet](http://hl7.org/fhir/ValueSet/allergyintolerance-code)"
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Must be one of \n* food\n* medication\n* environment\n* biologic \n [AllergyIntolerance Category ValueSet](http://hl7.org/fhir/ValueSet/allergy-intolerance-category)"
* rest.resource[=].searchParam[+].name = "clinical-status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-clinical-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Must be one of \n* active\n * inactive\n * resolved\n[AllergyIntolerance Clinical Status ValueSet](http://hl7.org/fhir/R4/valueset-allergyintolerance-clinical.html)"

* rest.interaction.code = #transaction