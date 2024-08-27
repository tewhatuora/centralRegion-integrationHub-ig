// Subscription profile for Central Region (running on SmileCDR)
//   Extension fields:
//   - Subscription.extension[payload-search-criteria]
//   - Subscription.channel.extension[delivery-retry]
//
Profile: NZCentralRegionSubscription
Parent: Subscription
Description: "Local flavour of Subscription for Te Whatu Ora, Central Region SmileCDR implementation."

* ^derivation = #constraint

* contained 0..0
* implicitRules 0..0
* language 0..0

* status MS
* criteria MS
* reason MS          //  Gotta put in a text reason

* channel
  * type 1..1 MS 
  * type = #rest-hook
  * endpoint 1..1 MS
  * payload 1..1 MS
  * payload = #application/json
  * extension contains hapi-subscription-retry-count named retry-count 1..1 MS
  * extension contains smilecdr-subscription-custom-delivery-class named custom-delivery-class 0..1 MS
  * modifierExtension 0..0

* extension contains hapi-subscription-payload-query named payload-query 1..1 MS
* extension[hapi-subscription-payload-query].valueString obeys nzcr-invariant-subscription-query-nospaces    // Not allowed spaces in payload-query

Extension: HAPISubscriptionPayloadQuery
Id:  hapi-subscription-payload-query
Title: "HAPI FHIR Payload Search Query"
Description: "The value to this extension is a string containing a FHIR search expression (i.e. a URL fragment without the base URL portion). It may contain the following substitutions:
${matched_resource_id} – Will be replaced with the relative ID of the resource that matched the subscription."

* ^url = $HAPISubscriptionPayloadQuery
* ^context[+].type = #element
* ^context[=].expression = "Subscription"
* value[x] only string


Extension: HAPISubscriptionRetryCount
Id:  hapi-subscription-retry-count
Title: "HAPI FHIR REST Hook Retry Count"
Description: "Defines the maximum number of retries to deliver a subscription payload to the parent chanel. Retries occur with an exponential backoff strategy. Once retries are exhausted, the failing payload will be added to the message broker's default Dead Letter Queue."

* ^url = $HAPISubscriptionRetryCount
* ^context[+].type = #element
* ^context[=].expression = "Subscription.channel"
* value[x] only integer


Extension: SmileCDRCustomDeliveryClass
Id:  smilecdr-subscription-custom-delivery-class
Title: "SmileCDR Subscription Custom Delivery Class"
Description: "Defines a custom Java class that will deliver the rest-hook Subscription notification"

* ^url = $SmileCDRSubscriptionCustomDeliveryClass
* ^context[+].type = #element
* ^context[=].expression = "Subscription.channel"
* value[x] only string
