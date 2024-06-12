# Te Whatu Ora, Central Region Integration Hub
This is the Implementation Guide for the [HL7® FHIR©](http://hl7.org/fhir) interface for the Central Region Integration Hub service used to integrate HL7 v2 and FHIR capable applications. It brings together all the artifacts that are necessary to understand and use the FHIR API. It is based on [FHIR R4](http://hl7.org/fhir/) and [NZBase 2.0.0](https://fhir.org.nz/ig/base/index.html)


The purpose of the Integration Hub is to provide a FHIR API façade into the Central Region's existing HL7 v2 messaging. 
The Integration Hub acts as an [Operational Data Store](https://en.wikipedia.org/wiki/Operational_data_store) holding snapshots of the supported FHIR resources
that have been populated from [master data](https://en.wikipedia.org/wiki/Master_data) sources via the region's internal HL7 v2 messaging network.

The Integration Hub currently only provides read-only access to the supported FHIR Resources.

## Logical Data Model
The Integration Hub supports a small set of FHIR Resources:

<figure>
{% include datamodel.svg %}
</figure>
