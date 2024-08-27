
<figure>
{% include useCaseUpdatePatient.svg %}
</figure>


## Subscriptions
Full discussion of Subscription payload options is in the [Developer's Guide](./devGuide-Subscriptions.html). 
The second pre-requisite of this use-case requires a subscription on the `Patient` resource be put in place prior to receiving patient data updates.

For this subscription the client needs to decide if they want to receive a [single resource notification](#single-resource-notification-subscription), or a [bundle resource notification](#bundle-resource-notification-subscription-patient).

### Single Resource Notification Subscription
A sample subscription, returning the updated Patient resource would look like this:

```json
{
    "resourceType": "Subscription",
    "id": "325",
    "status": "active",
    "criteria": "Patient?identifier=ZKG3868",
    "channel": {
        "type": "rest-hook",
        "endpoint": "http://localhost:3000/fhir/callback/Patient",
        "payload": "application/json"
    }
}
```

### Bundle Resource Notification Subscription (Patient)
If you require the patient's `Flag`, `AllergyIntolerance` and `ClinicalImpression` resources to be included along with the triggering `Patient` resource then you will want to place another bundle resource notification subscription, like this:

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
