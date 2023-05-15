NZ Residency has multiple codings:
* `http://hl7.org.nz/fhir/StructureDefinition/nz-residency#unknown` as the patient is not known to be an NZ resident
* `https://standards.digital.health.nz/ns/central-region/nz-residency-code#DET` as the patient's residency status is yet to be determined

```json
    {
      "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-residency",
      "extension": [
        {
          "url": "status",
          "valueCodeableConcept": {
            "coding": [
              {
                "code": "unknown",
                "system": "https://standards.digital.health.nz/ns/nz-residency-code",
                "display": "Unknown"
              },
              {
                "code": "DET",
                "system": "https://standards.digital.health.nz/ns/central-region/nz-residency-code",
                "display": "Details required"
              }
            ]
          }
        }
      ]
    }
```