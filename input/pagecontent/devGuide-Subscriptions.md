
The [Refer Patient](./useCaseReferPatient.html) use case includes a step whereby API client registers a Subscription to receive notifications for updates to a particular Patient record.

The Central Region Integration Hub only accepts Subscriptions with the `rest-hook` channel type.
The API client is able to choose between two styles of notification:
1. Single resource notifications, where the updated resource is included in the notification call-back.
2. Bundle resource notifocations, where the notifcation call-back payload can be an arbitrary bundle of resources.


### Single Resource Notification

Sample `Subscription` for a single resource notification on changes to Patient with NHI of `ZKG3868`.  The matching callback will:
  * be an http `PUT` rest call to a url constructed from the given endpoint value plus the patient resource identifier, eg:  `http:localhost:3000/fhir/callback/Patient/1956`
  * contain a single updated `Patient` resource.

```json
{
    "resourceType": "Subscription",
    "status": "active",
    "criteria": "Patient?identifier=ZKG3868",
    "channel": {
        "type": "rest-hook",
        "endpoint": "http://localhost:3000/fhir/callback",
        "payload": "application/json"
    },
}
```

The expected notification will have the form:
```json
{
   "resourceType": "Patient",
   "id": "326"

   ...

}
```

### Bundle Resource Notification

Sample `Subscription` for a bundle resource notification on changes to Patient with NHI of `ZKG3868`.  The matching callback will:
  * be an http `POST` rest call to the given endpoint value:  `http:localhost:3000/fhir/callback`
  * contain an arbitrary `Bundle` resource containing the various resources included in the `payload-search-criteria` parameter.

```json
{
    "resourceType": "Subscription",
    "id": "325",
    "status": "active",
    "criteria": "Patient?identifier=ZKG3868",
    "channel": {
        "type": "rest-hook",
        "endpoint": "http://localhost:3000/fhir/callback",
        "payload": "application/json"
    },
    "extension": [ {
        "url": "http://hapifhir.io/fhir/StructureDefinition/subscription-payload-search-criteria",
        "valueString": "Patient?_id=${matched_resource_id}&_include=*&_revinclude=Flag:*&_revinclude=AllergyIntolerance:*&_revinclude=ClinicalImpression:*&_revinclude=ServiceRequest:*"
      } ]
}
```

The expected notification will have the form:
```json
{
  "resourceType": "Bundle",
  "id": "b1a0635f-3527-4d6c-b5c0-c727d2a2d2be",
  "meta": {
    "lastUpdated": "2024-06-07T12:55:31.933+12:00"
  },
  "type": "searchset",
  "total": 1,
  "link": [ {
    "relation": "self",
    "url": "http://localhost:8080/fhir/Patient?_id=326&_include=*&_revinclude=Flag%3A*&_revinclude=AllergyIntolerance%3A*&_revinclude=ClinicalImpression%3A*&_revinclude=ServiceRequest%3A*"
  } ],
  "entry": [ {
    "fullUrl": "http://localhost:8080/fhir/Patient/326",
    "resource": {
      "resourceType": "Patient",
      "id": "326"

      ...
    } 
  } ]
}
```