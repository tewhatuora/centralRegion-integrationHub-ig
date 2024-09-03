Instance: nzcr-referral-referring-practice
InstanceOf: SearchParameter
Title: "Search by referringPractice in referral flavour of ServiceRequest"
Usage: #definition

* status = #active
* experimental = false

* description = "This SearchParameter enables query of referral flavour of ServiceRequest by referringPractice to support Subscribers receiving notifcations that include the referringPractice's Organization resource"
* name = "NZCentralRegionSearchParamReferringPractice"
* code = #referringPractice

* base[+] = #ServiceRequest

* type = #reference
* expression = "ServiceRequest.extension('https://standards.digital.health.nz/ns/central-region/referral').extension('referringPractice')"
* xpathUsage = #normal
