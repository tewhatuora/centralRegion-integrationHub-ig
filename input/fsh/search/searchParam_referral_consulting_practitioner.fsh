Instance: nzcr-referral-consulting-practitioner
InstanceOf: SearchParameter
Title: "Search by consultingPractitioner in referral flavour of ServiceRequest"
Usage: #definition

* status = #active
* experimental = false

* description = "This SearchParameter enables query of referral flavour of ServiceRequest by consultingPractitioner to support Subscribers receiving notifcations that include the consultingPractitioner's Practitioner resource"
* name = "NZCentralRegionSearchParamConsultingPractitioner"
* code = #consultingPractitioner

* base[+] = #ServiceRequest

* type = #reference
* expression = "ServiceRequest.extension('https://standards.digital.health.nz/ns/central-region/referral').extension('consultingPractitioner')"
* xpathUsage = #normal
