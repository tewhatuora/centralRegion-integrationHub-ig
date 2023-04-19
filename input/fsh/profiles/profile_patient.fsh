// Patient profile for Central Region
//   - We don't support many fields from NZBasePatient
//   - We have many of our own Terminology codings
Profile: NZCentralRegionPatient
Parent: $NZBasePatient
Description: "Patient resource for Te Whatu Ora, Central Region"

* active 0..1 
* name 1..* MS
* telecom 1..3
  * extension[cp-purpose] 0..0
* gender 1..1  MS
* birthDate 1..1 MS
* deceased[x] 1..1 MS
* address 0..*

* maritalStatus 1..1 MS
* maritalStatus from nzcr-marital-status-value-set (required)

* multipleBirthBoolean 0..0
* multipleBirthInteger 0..0
* photo 0..0
* contact 0..* MS // A contact party (e.g. guardian, partner, friend) for the patient
  * relationship 1..1 MS
  * name 1..1 MS
  * telecom 0..* MS
  * address 0..0 // Contact Address is not included in RegionalMessageSpecification (yet)
  * gender 0..0
  * organization 0..0
  * period 0..1 MS
* communication 0..* MS
  * language 1..1
  * preferred 1..1
* generalPractitioner 0..1 MS // Patient's nominated primary care provider
* managingOrganization 0..0 // Organization that is the custodian of the patient record
* link 0..0 // Link to another patient resource that concerns the same actual person  
  * other   // The other patient or related person resource that the link refers to
  * type    // R!  replaced-by | replaces | refer | seealso
