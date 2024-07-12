
The [Refer Patient](./useCaseReferPatient.html) use case includes a step whereby API client registers a [Subscription](https://hl7.org/fhir/R4/subscription.html) to receive notifications for updates to a particular Patient record.

The Central Region Integration Hub only accepts subscriptions with the [`rest-hook`](https://hl7.org/fhir/R4/subscription.html#2.46.7.1) channel type.
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

  Details on all the various query parameters that can be included in the `payload-search-criteria` parameter are given in the relevant [FHIR Tutorial](https://github.com/hapifhir/fhir-tutorial/blob/master/Search_References_ChainHasIncludeRevinclude/lesson.md). In the following example we get the triggering Patient resource plus:
  * Flag resources with the given Patient as `subject`.
  * AllergyIntolerance resources with the given Patient as `patient`.
  * ClinicalImpression resources with the given Patient as `subject`.
  * ServiceRequest resources with the given Patient as `subject`.

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
    "url": "http://localhost:8080/fhir/Patient?_id=326&_include=*&_revinclude=Flag:*&_revinclude=AllergyIntolerance:*&_revinclude=ClinicalImpression:*&_revinclude=ServiceRequest:*"
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

### Manual Subscription Triggering

The test instance of SmileCDR at `test-smilecdr.mdhb.health.nz` has been configured to allow manual triggering of subscriptions.
Full details on this capability are available at [SmileCDR Documentation](https://smilecdr.com/docs/subscription/manual_triggering.html).

In short, posting a suitable `Parameter` structure to `https://test-smilecdr.mdhb.health.nz:8000/Subscripton/{id}/$trigger-subscription`
will cause the Subscription's notification(s) to be sent out. 

The `Parameter` request body is as follows:

```json
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "searchUrl",
      "valueString": "Patient?identifier=ZKG3868"
    }
  ]
}
```

### Subscription Status

Subscriptions once created can be switched on and off by setting the [status](https://hl7.org/fhir/R4/valueset-subscription-status.html) field to the appropriate value:
* `active` - The subscription is active.
* `off`    - The subscription has expired.

