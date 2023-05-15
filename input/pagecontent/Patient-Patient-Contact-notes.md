Note use of multiple codings on the `relationship` field:
* [HL7 v3 Contact Role](http://terminology.hl7.org/CodeSystem/v2-0131) only provides for generic 'State Agency'
* [Central Region Contact Role](./CodeSystem-nzcr-contact-relationship-code.html) tells us which agency
```json
"contact": [
  {
    "relationship" : [
      {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
            "code" : "S",
            "display" : "State Agency"
          },
          {
            "system" : "https://standards.digital.health.nz/ns/central-region/contact-relationship",
            "code" : "21",
            "display" : "Dept of Correction (NZ)"
          }
        ]
      }
    ],
    "name" : {
      "text" : "Officer Karen O'Leary",
      "family" : "O'Leary",
      "given" : [
        "Karen"
      ],
      "prefix" : [
        "Officer"
      ]
    },
    "telecom" : [
      {
        "system" : "phone",
        "value" : "+64 6 356 8855",
        "use" : "work"
      }
    ]
  }
]
```