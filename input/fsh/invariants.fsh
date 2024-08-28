Invariant: nzcr-uncoded-flags
Description: "Flag categories NHIMWS, MA & MC are free-text uncoded Categories, and must have NullFlavor#NP code and must have code.text field"
Severity: #error
Expression: "category.coding.where(code = 'NHIMWS' or code = 'MA' or code='MC').exists() implies 
    code.text.exists() and 
    code.coding.where(code = 'NP').exists()"


Invariant: nzcr-coded-flags
Description: "Flag without code.text field and without NullFlavor#NP means there is Flag category is other than NHIMWS, MA & MC"
Severity: #error
Expression: "code.text.exists().not() and code.coding.where(code = 'NP').exists().not() implies 
category.coding.where(code != 'NHIMWS' and code != 'MA' and code != 'MC').exists()"


Invariant: nzcr-invariant-subscription-query-nospaces
Description: "Subscription extension field 'subscription-payload-search-criteria' must not contain spaces"
Severity: #error
Expression: "contains(' ').not()"

