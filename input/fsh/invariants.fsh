
// Some flag categories (NHIMWS, MA and MC) are uncoded, and have no author
Invariant: nzcr-uncoded-flags
Description: "Flag categories NHIMWS, MA & MC are free-text uncoded Categories, and can't have Author"
Severity: #error
Expression: "category.coding.where(code = 'NHIMWS' or code = 'MA' or code='MC').exists() implies 
    code.text.exists() and 
    code.coding.where(code = 'NP').exists()"


Invariant: nzcr-coded-flags
Description: "Flag categories other than NHIMWS, MA & MC are not free-text uncoded Categories, and must have Author and recordingHospital"
Severity: #error
Expression: "category.coding.where(code != 'NHIMWS' and code != 'MA' and code != 'MC').exists() implies 
   code.text.exists().not() and 
   code.coding.code.memberOf('http://terminology.hl7.org/ValueSet/v3-NullFlavor').not() and
   author.exists() and
   extension.where(url = 'https://standards.digital.health.nz/ns/central-region/alert').extension.where(url = 'recordingHospital').exists()"
   
Invariant: nzcr-invariant-subscription-query-nospaces
Description: "Subscription extension field 'subscription-payload-search-criteria' must not contain spaces"
Severity: #error
Expression: "contains(' ').not()"

