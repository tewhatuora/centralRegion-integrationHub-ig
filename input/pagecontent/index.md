# Te Whatu Ora, Central Region Integration Hub
This is the Implementation Guide for the [HL7® FHIR©](http://hl7.org/fhir) interface for the Central Region Integration Hub service used to integrate HL7 v2 and FHIR capable applications. It brings together all the artifacts that are necessary to understand and use the FHIR API. It is based on [FHIR R4](http://hl7.org/fhir/) and [NZBase 2.0.0](https://fhir.org.nz/ig/base/index.html)

## Sections

- [Technology Landscape](./technologyLandscape.html): Technology landscape of the Integration Hub.

- Use Cases: Expected Use Cases supported by the Integration Hub

- API: The specific API features supported by Integration Hub

- Profiles: A list of the FHIR Resource Profiles that are defined by the guide.

- [Terminology](./artifacts.html#terminology-value-sets): List of the FHIR terminology Value Set and Code System artifacts defined within this implementation guide

- [Artifact Index](artifacts.html): A page with all artifacts (Logical Models, Profiles, Extensions, Terminology and others) defined in this guide.

## Logical Data Model
The Integration Hub supports a small set of FHIR Resources:

<figure>
{% include datamodel.svg %}
<figcaption>Supported FHIR Resources</figcaption>
</figure>

