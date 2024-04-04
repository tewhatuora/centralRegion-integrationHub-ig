
// Some flag categories (NHIMWS, MA and MC) are uncoded, have no author etc...
Invariant: nzcr-uncoded-flags
Description: "Flag categories NHIMWS, MA & MC are free-text uncoded Categories, and can't have Author or recordingHospital.display"
Severity: #error
Expression: "category.coding.where(code = 'NHIMWS' or code = 'MA' or code='MC').exists() implies 
    code.text.exists() and 
    code.coding.exists().not() and
    author.exists().not() and
    extension[flag-alert].extension[recordingHospital].coding.display.exists().not()"

Invariant: nzcr-coded-flags
Description: "Flag categories other than NHIMWS, MA & MC are not free-text uncoded Categories, and must have Author and recordingHospital.display"
Severity: #error
Expression: "category.coding.where(code != 'NHIMWS' and code != 'MA' and code='MC').exists() implies 
   code.text.exists().not() and 
   code.coding.exists() and
   author.exists() and
   extension[flag-alert].extension[recordingHospital].coding.display.exists()"