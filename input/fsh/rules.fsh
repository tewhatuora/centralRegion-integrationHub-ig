// concept maps get a bit repetitive
RuleSet: cmapEntry(from, frDisplay, to, toDisplay) 
* group[=].element[+]
  * code = #{from}
  * display = {frDisplay}
  * target[+]
    * code = #{to}
    * display = {toDisplay}
    * equivalence = #equivalent

RuleSet: cmapEntryComment(from, frDisplay, to, toDisplay, comment)
* group[=].element[+]
  * code = #{from}
  * display = {frDisplay}
  * target[+]
    * code = #{to}
    * display = {toDisplay}
    * equivalence = #equivalent
    * comment = {comment}

