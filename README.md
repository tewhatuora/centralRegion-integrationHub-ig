# Introduction 
This is the FSH (FHIR Shorthand) source for the Te Whatu Ora, Central Region, Integration Hub FHIR ImplementationGuide.
It describes the APIs available in the new Central Region FHIR Integration platform. 

You can learn about Learn about FSH (FHIR Shorthand) at - [FSH School](https://fshschool.org/)

```bash
sushi - validates the FSH source and generates the matching FHIR ImplementationGuide
```

# API Provider - HL7 v2.4 Listener
The Central Region Integration Platform provides a FHIR facade for the following HL7 v2.4 messages:
* ADT A28 - Create New Patient
* ADT A31 - Update Patient (Not visit related)
* ADT A40 - Merge Patient via Patient Identifier List
* REF I12 - Add Referral
* REF I13 - Update Referral
* REF I14 - Delete Referral

