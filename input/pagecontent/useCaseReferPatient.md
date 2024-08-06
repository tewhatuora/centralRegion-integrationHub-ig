
<figure>
{% include useCaseReferPatient.svg %}
</figure>

## Subscriptions
Full discussion of Subscription payload options is in the [Developer's Guide](./devGuide-Subscriptions.html). 
Two subscriptions are required at various stages of this use case:
1. The second pre-requisite of this use-case requires a subscription on the `ServiceRequest` resource be put in place prior to referrals being created.
2. Step 12 places a subscription on the relevant `Patient` resource.

For both these subscriptions the client needs to decide if they want to receive a [single resource notification](#bundle-resource-notification-subscription-servicerequest), or a [bundle resource notification](#bundle-resource-notification-subscription-patient).

### Single Resource Notification Subscription
The second pre-requisite of this use-case is that a suitable subscription be put in place prior
to referrals being created.  A sample subscription, returning the triggered ServiceRequest resource that targets referrals to a particular [Hospital Clinic](./ValueSet-nzcr-clinic-vs.html) e.g.  Mental Health and Addiction Services, would look like this:

```json
{
    "resourceType": "Subscription",
    "status": "active",
    "criteria": "ServiceRequest?clinicType=MMA",
    "channel": {
        "type": "rest-hook",
        "endpoint": "http://localhost:3000/fhir/callback/ServiceRequest",
        "payload": "application/json"
    },
}
```
**Notes**
* The use of [clinicType](SearchParameter-nzcr-referral-clinic-type.html) search parameter, to target the subscription to the particular hospital clinic.
* The rest-hook callback will use an HTTP `PUT` call to the endpoint URL;  You may require separate callback addresses, one for each resource type you expect to receive.

### Bundle Resource Notification Subscription (ServiceRequest)
Steps 9, 10 & 11, the retrieve patient details steps, can be removed from the above diagram by requesting a suitable bundle resource notification when placing the subscription:

```json
{
    "resourceType": "Subscription",
    "status": "active",
    "criteria": "ServiceRequest?_clinicType=MMA",
    "channel": {
        "type": "rest-hook",
        "endpoint": "http://localhost:3000/fhir/callback",
        "payload": "application/json"
    },
    "extension": [ {
        "url": "http://hapifhir.io/fhir/StructureDefinition/subscription-payload-search-criteria",
        "valueString": "ServiceRequest?_id=${1}&_include=Patient:*&_revinclude:iterate=AllergyIntolerance:*&_revinclude:iterate=Flag:*&_revinclude:iterate=ClinicalImpression:*"
    } ]
}
```

**Notes:**
* Notifications from this subscription will return:
  1. The triggering referral as a ServiceRequest resource
  2. The Patient resource
  3. The Patient's Flag, Allergy and ClinicalImpression resources.

* The use of [payload-search-criteria](https://smilecdr.com/docs/subscription/delivery.html#payload-search-result-mode) extension to include multiple resources, related to the triggering ServiceRequest, in the bundle.
* The rest-hook callback will use an HTTP `POST` call to the endpoint URL

### Bundle Resource Notification Subscription (Patient)

Step 12 in this use case places a subscription on the relevant Patient resource, to receive notifications on all subsequent updates of patient records.
It is most likely that you will want to place another bundle resource notification subscription, like this:

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