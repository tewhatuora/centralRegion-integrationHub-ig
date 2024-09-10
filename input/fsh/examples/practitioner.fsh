// Example Instance of Central Region flavour of Practitioner
Instance: Practitioner
InstanceOf: NZCentralRegionPractitioner
Description: "An example of a Practitioner resource, in Te Whatu Ora Central Region"
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

* name
  * use = #usual
  * text = "Dr Nadhila Binti Mazlan"
  * family = "Binti Mazlan"
  * given[0] = "Nadhila"
  * prefix[0] = "Dr"
