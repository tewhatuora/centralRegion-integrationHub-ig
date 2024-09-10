// Example Instance of Central Region flavour of Organization
Instance: Organization
InstanceOf: NZCentralRegionOrganization
Description: "An example of a Organization resource, in Te Whatu Ora Central Region"
Usage:  #example

* identifier
  * use = #usual
  * type
    * coding[+]
      * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
      * code = #LR
      * display = "Local Registry ID"
  * system = "https://standards.digital.health.nz/ns/central-region/pas-practitioner-id"
  * value = "76730"

* name = "Wicksteed St Medical Centre"
