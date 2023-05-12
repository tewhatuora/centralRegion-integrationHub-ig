Ethnicity level 2 code value `21` provided in raw HL7 v2 message is augmented with the matching Ethniciy level 4 code value `21111` as preferred by NZ Base.

This is multiple codings of a patient's single ethnicity value.
```json
{
    "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity",
    "valueCodeableConcept": {
    "coding": [
        {
        "code": "21111",
        "system": "https://standards.digital.health.nz/ns/ethnic-group-level-4-code",
        "display": "Māori"
        },
        {
        "code": "21",
        "system": "https://standards.digital.health.nz/ns/ethnic-group-level-2-code",
        "display": "Māori"
        }
    ]
}
```