# Te Whatu Ora, Central Region Integration Hub
This is the Implementation Guide for the [HL7® FHIR©](http://hl7.org/fhir) interface for the Central Region Integration Hub service used to integrate HL7 v2 and FHIR capable applications. It brings together all the artifacts that are necessary to understand and use the FHIR API. It is based on [FHIR R4](http://hl7.org/fhir/) and [NZBase 2.0.0](https://fhir.org.nz/ig/base/index.html)


The purpose of the Integration Hub is to provide a FHIR API façade into the Central Region's existing HL7 v2 messaging. 
The Integration Hub acts as an [Operational Data Store](https://en.wikipedia.org/wiki/Operational_data_store) holding snapshots of the supported FHIR resources
that have been populated from [master data](https://en.wikipedia.org/wiki/Master_data) sources via the region's internal HL7 v2 messaging network.

The Integration Hub currently only provides read-only access to the support FHIR Resources.

## Sections

- [Technology Landscape](./technologyLandscape.html): Technology landscape of the Integration Hub.

- Use Cases: Expected Use Cases supported by the Integration Hub

  - [Refer Patient](./useCaseReferPatient.html)
  - [Update Patient](./useCaseUpdatePatient.html)

- API: The specific API features supported by the Integration Hub [Summary](./CapabilityStatement-nzcr-SmileCDR.html) or [Details](./capabilityStatement.html)

- Profiles: A list of the FHIR Resource [Profiles](./artifacts.html#2) and [Extensions](./artifacts.html#3) that are defined by the guide.

- Terminology: List of the FHIR terminology artifacts [Code Systems](./artifacts.html#terminology-code-systems), 
       [Value Sets](./artifacts.html#terminology-value-sets), [Concept Maps](./artifacts.html#terminology-concept-maps), 
       [Example Instances](./artifacts.html#example-example-instances) defined within this implementation guide

- [Release Notes](./ReleaseNotes.html): Brief notes of recent changes made to this Implementation Guide

- [Developer's Guide](./DeveloperGuide.html): Outlines the API Client provisioning process; and obtaining OAuth access tokens to authenticate API calls.

## Logical Data Model
The Integration Hub supports a small set of FHIR Resources:

<figure>
{% include datamodel.svg %}
</figure>
