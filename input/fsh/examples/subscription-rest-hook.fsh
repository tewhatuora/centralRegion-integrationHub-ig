// Example Instances of Subscription for rest-hook callback
Instance: CustomQuery
InstanceOf: NZCentralRegionSubscription
Description: "An example of an rest-hook type Subscription with custom query and retry-count fields"
Usage:  #example


* extension[hapi-subscription-payload-query].valueString = "ServiceRequest?_id=${matched_resource_id}&_include=Patient:*&_revinclude:iterate=AllergyIntolerance:*&_revinclude:iterate=Flag:*&_revinclude:iterate=ClinicalImpression:*"
* status = #active
* reason = "We need all referrals to the Mental Health & Addiction Services clincs."
* criteria = "ServiceRequest?clinicType=MMA"
* channel
  * extension[hapi-subscription-retry-count].valueInteger = 5
  * extension[custom-delivery-class].valueString = "nz.govt.tewhatuora.central.cdr.subscription.whanautahi.CustomRestHookSubscriptionsDeliverer"
  * type = #rest-hook
  * endpoint = "https://example.com/fhir-callback"
  * payload = #application/json
