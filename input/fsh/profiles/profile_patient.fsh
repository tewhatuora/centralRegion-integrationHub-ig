// Patient profile for Central Region
//   - We don't support many fields from NZBasePatient
//   - We have many of our own Terminology codings
Profile: NZCentralRegionPatient
Parent: $NZBasePatient
Description: "Patient resource for Te Whatu Ora, Central Region"

* active 0..1 
* name 1..* MS

* address 0..* MS
  * extension[building-name] 0..0
  * extension[nz-geocode] 0..0
  * extension[domicile-code] 0..0
  * extension[suburb] 0..1 MS
  * use 0..0
  * type 1..1 MS
  * type = #postal
  * type ^short = "Fixed value #postal"
  * text 1..1 MS
  * line 0..1 MS
  * city 0..1 MS
  * district 0..0
  * state 0..1
  * postalCode 0..1 MS
  * country 1..1 MS
  * period 0..0
  * id 0..0

* telecom 1..3
  * extension[cp-purpose] 0..0
  * period 0..0
  * rank 0..0
  * system 1..1 MS
  * value 1..1 MS
  * use 1..1 MS
  * id 0..0

* extension[domicile-code] 0..1 MS
* extension[dhb] 0..1 MS

* gender 1..1  MS

* birthDate 1..1 MS
* multipleBirth[x] 0..0
* extension[sex-at-birth] 0..0

* extension[ethnicity] 0..3 MS
* extension[nzCitizen] 0..1 MS
  * extension[status] 1..1 MS
    * ^short = "Is this person a New Zealand citizen? CodeableConcept: #yes / #no / #unknown"
    * extension 0..0
    * id 0..0
  * extension[source] 0..0
  * id 0..0

* extension[iwi] 0..0

* maritalStatus 1..1 MS
* maritalStatus from nzcr-marital-status-value-set (required)

* photo 0..0

* contact 0..* MS // A contact party (e.g. guardian, partner, friend) for the patient
  * relationship 1..1 MS
  * name 1..1 MS
  * telecom 0..* MS
    * system 1..1 MS
    * value 1..1 MS
    * use 1..1 MS
    * rank 0..0

  * address 0..0 // Contact Address is not included in RegionalMessageSpecification (yet)
  * gender 0..0
  * organization 0..0
  * period 0..1 MS

* communication 0..* MS
  * language 1.. MS
  * preferred 1..1 MS

* generalPractitioner 0..1 MS // Patient's nominated primary care provider 
* managingOrganization 0..0   // Organization that is the custodian of the patient record    ... or maybe use PHO from NZBase ??
* extension[pho] 0..0 

* deceased[x] 1..1 MS
  * ^short = "deceasedBoolean = true if patient is deceased and deceased date/time is unknown, deceasedDateTime if known"


* link 0..0 // Link to another patient resource that concerns the same actual person  
  * other   // The other patient or related person resource that the link refers to
  * type    // R!  replaced-by | replaces | refer | seealso
