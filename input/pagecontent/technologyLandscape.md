The Central Region Integration Hub acts as a caching proxy of existing HL7 v2 messaging:

<figure>
{% include landscape.svg %}
<figcaption>Technology Landscape</figcaption>
</figure>

The components in the technology landscape are:
* WebPAS - Regional Patient Administration System (PAS); the primary system used by clinicians to record patient details, referrals, lab and x-ray requests, etc...
* HL7 v2 Hub & Spoke - Publish and Subscribe Hub and Spoke receiving and forwarding HL7 v2.4 messages, as defined by the Regional Message Specification. 
* Integration Hub - the subject of this implementation guide.
* FHIR API Client - generic name for multiple FHIR capable applications used by specific medical specialities.


## Logical Data Model
The Integration Hub supports a small set of FHIR Resource:

<figure>
{% include datamodel.svg %}
<figcaption>Supported FHIR Resources</figcaption>
</figure>

## HL7 v2.4 Listener
The Integration Hub provides a FHIR façade for the following HL7 v2.4 messages, from the regional messaging specification.
* ADT A28 - Create New Patient
* ADT A31 - Update Person (Not visit related)
* ADT A40 - Merge Patient via Patient Identifier List
* REF I12 - Add Referral
* REF I13 - Update Referral
* REF I14 - Delete Referral
