Instance: nzcr-referral-clinic-type
InstanceOf: SearchParameter
Title: "Search by clinicType in referral flavour of ServiceRequest"
Usage: #definition

* status = #active
* experimental = false

* description = "This SearchParameter enables query of referral flavour of ServiceRequest by clinicType to support Subscribers receiving notifcations off a subset of referrals."
* name = "NZCentralRegionSearchParamClinicType"
* code = #clinicType

* base[+] = #ServiceRequest

* type = #token
* expression = "ServiceRequest.extension('https://standards.digital.health.nz/ns/central-region/referral').extension('clinicType')"
* xpathUsage = #normal
