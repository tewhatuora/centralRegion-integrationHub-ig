Note use of `suburb` as an extension on `Address` field.

```json
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
```