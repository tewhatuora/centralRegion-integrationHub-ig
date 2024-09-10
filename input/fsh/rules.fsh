// concept maps get a bit repetitive
RuleSet: cmapEntry(from, frDisplay, to, toDisplay) 
* group[=].element[+]
  * code = #{from}
  * display = {frDisplay}
  * target[+]
    * code = #{to}
    * display = {toDisplay}
    * equivalence = #equivalent

// Sometimes we wanna put in a comment as well
RuleSet: cmapEntryComment(from, frDisplay, to, toDisplay, comment)
* group[=].element[+]
  * code = #{from}
  * display = {frDisplay}
  * target[+]
    * code = #{to}
    * display = {toDisplay}
    * equivalence = #equivalent
    * comment = {comment}


// We make extensive use of additional-bindings
RuleSet: AdditionalBindingByExtension(purpose, canonical)
* ^binding.extension[$HL7AdditionalBinding][+].extension[purpose].valueCode = {purpose}
* ^binding.extension[$HL7AdditionalBinding][=].extension[valueSet].valueCanonical = {canonical}



// Some resources have a default set of meta fields
RuleSet: ResourceMetaFields
* extension contains nzcr-l4hmeta-timestamp                     named process-timestamp 0..1 MS
* extension contains nzcr-l4hmeta-source-event-trigger          named source-event-trigger 0..1 MS
* extension contains nzcr-l4hmeta-source-record-type            named source-record-type 0..1 MS
* extension contains nzcr-l4hmeta-source-record-id              named source-record-id 0..1 MS
* extension contains nzcr-l4hmeta-source-data-model-version     named source-data-mode-version 0..1 MS
* extension contains nzcr-l4hmeta-process-client-id             named process-client-id 0..1 MS
* extension contains nzcr-l4hmeta-template-version              named l4h-template-version 0..1 MS

// Headline resources have all the meta fields
RuleSet: HeadlineResourceMetaFields
* extension contains nzcr-hl7v2-message                         named hl7v2Message 1..1 MS
* extension contains nzcr-l4hmeta-timestamp                     named process-timestamp 0..1 MS
* extension contains nzcr-l4hmeta-source-event-trigger          named source-event-trigger 0..1 MS
* extension contains nzcr-l4hmeta-source-record-type            named source-record-type 0..1 MS
* extension contains nzcr-l4hmeta-source-record-id              named source-record-id 0..1 MS
* extension contains nzcr-l4hmeta-source-data-model-version     named source-data-mode-version 0..1 MS
* extension contains nzcr-l4hmeta-process-client-id             named process-client-id 0..1 MS
* extension contains nzcr-l4hmeta-template-version              named l4h-template-version 0..1 MS
