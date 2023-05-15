Note use of `suburb` as an extension on `Address` field, with `domicile` and `dhb` as extensions on root `Patient`

```json
{
 "address": [
    {
      "type": "postal",
      "extension": [
        {
          "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
          "valueString": "Kelvin Grove"
        }
      ],
      "line": [
        "100 Cambridge Street"
      ],
      "city": "Palmerston North",
      "postalCode": "4410",
      "country": "NEW ZEALAND",
      "text": "100 Cambridge Street Kelvin Grove Palmerston North 4410 NEW ZEALAND"
    }
  ]
},
 "extension": [
      {
      "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "1851",
            "system": "https://standards.digital.health.nz/ns/domicile-code",
            "display": "Palmerston North Central"
          }
        ]
      }
    },
    {
      "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
      "valueCodeableConcept": {
        "coding": [
          {
            "code": "G00033-J",
            "system": "https://standards.digital.health.nz/ns/dhb-code",
            "display": "Mid Central District Health Board"
          }
        ]
      }
    }
 ]
```