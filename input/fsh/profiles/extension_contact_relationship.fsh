// Patient.contact.relationship.extension definition - because we can't do additionalBindings
Extension: NZCentralRegionContactRelationshipExtn
Id:   nzcr-extn-contact-relationship
Title:  "Contact Relationship"
Description: "Coding extension recording the original contact relationship value from NK1-HL7 v2 message that was used to create / update the FHIR resource"

* ^status = #active
* ^url = $NZCentralRegionRelationship

* ^context[+].type = #element
* ^context[=].expression = "Patient.contact.relationship"
* value[x] only Coding
* value[x] from nzcr-contact-relationship-vs
