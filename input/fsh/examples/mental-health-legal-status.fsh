// Example Instances of Patient with different address fields
Instance: MentalHealthLegalStatus
InstanceOf: NZCentralRegionClinicalImpression
Description: "An example of a mental health legal status review ClinicalImpression derived from ZLS custom segment, in Te Whatu Ora Central Region"

* identifier
  * use = #usual
  * system = $NZCentralRegionLocalClinicalImpressionId
  * value = "ZHY5362-20220301165204"

* status = #completed

* subject
  * type = #Patient
  * identifier
    * use = #usual
    * type
      * coding
        * code = #MR
        * system = $HL7IdentifierTypeCS
        * display = "Medical record number"
    * system = $NZBaseNHI
    * value = "ZHY5362"


* assessor
  * type = #Practitioner
  * identifier
    * use = #usual
    * type
      * coding
        * code = #LR
        * system = $HL7IdentifierTypeCS
        * display = "Local Registry ID"
    * system = $NZCentralRegionPASPractitioner
    * value = "47949"
  * display = "Barnes, Abby Dr"

* effectiveDateTime = "2022-08-28T16:52:04+12:00"

* note[+]
  * text = "This is comments made within the patients legal status Extra comments made within the patients legal status"

* extension[mentalHealth]
  * extension[legalStatus].valueCoding
    * code = #R11
    * display = "CPMIP S34(1)(a)(i)"
    * system = "https://standards.digital.health.nz/ns/central-region/mental-health-legal-status"

  * extension[reviewStatus].valueCoding
    * code = #R04
    * display = "Not reas practical"
    * system = "https://standards.digital.health.nz/ns/central-region/mental-health-review-status"

  * extension[startDateTime].valueDateTime = "2022-03-01T16:52:04+12:00"

  * extension[reviewDate].valueDate = "2020-10-20"
  * extension[location].valueCoding
    * code = #M36
    * display = "PN Police"
    * system = "https://standards.digital.health.nz/ns/central-region/mental-health-review-location"

  * extension[reminderDate].valueDate = "2022-08-14"

  * extension[addedBy].valueString = "theresby - Theresa Byrne MDHB"
  * extension[addedDateTime].valueDateTime = "2022-03-01T16:53:18+12:00"

  * extension[lastUpdatedBy].valueString = "theresby - Theresa Byrne MDHB"
  * extension[lastUpdatedDateTime].valueDateTime = "2022-03-01T16:53:26+12:00"

* meta.extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8RElUMV9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAzMDgxMTI5NDQwMDArMTMwMHx8QURUXkEzMXwzNDFQMDAwMDAwMDAwMDQ2MTY5NHxQfDIuNA0KRVZOfHwyMDIyMDMwODExMjkzOQ0KUElEfHx8WkhZNTM2Ml5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjJ8fE1DSCBTTUlUSF5KQU5JQ0VeSkFOXl5NU3x8MTk5MDA3MDEwMDAwMDB8VXx8MzFeU2Ftb2FuXk5aSElTfDE4IEZPWFRPTiBST0FEXl5GT1hUT05eXjQ4MTReXkN+Xl5eXl5ORVcgWkVBTEFORF5NfDE5MDN8XlBSTl5QSH4wMjIzMDMwMzAxXk9STl5DUHxeV1BOXlBIfENITV5DaGluZXNlIC0gTWFuZGFyaW5eTkhERC0xMzJeWXxVXlVua25vd25eSEw3MDAwMnxSMTBeQ2hyaXN0aWFuXlJISVBfUmVsaWdpb258fHx8fDMxXlNhbW9hbl5OWkhJU340Ml5DaGluZXNlXk5aSElTfjIxXk5aIE1hb3JpXk5aSElTfHx8fFl8fFNUVV5TdHVkZW50IHZpc2FeUkhJUF9SZXNpZGVudF9TdGF0dXN8fE4NClBEMXx8fFdoYW5nYW51aSBBY2NpZGVudCBhbmQgTWVkaWNhbCBDbGluaWNeXjIxNzIyXl5eJjIuMTYuODQwLjEuMTEzODgzLjIuMTguNjYuMy4zLjB8NDUzNDZeTWF0aGV3XlJhanVeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wDQpOSzF8MXxEQU5JRUxeTUNIIEJSQURMWV5eXk1SfDE2XlNwb3VzZV53ZWJQQVN8fF5QUk5eUEh+MDIxNjU0MzIxM15PUk5eQ1B8XldQTl5QSA0KTksxfDJ8U1VFXk1DSCBQRVRFUl5eXlBST0Z8MDheQXVudF53ZWJQQVN8fF5QUk5eUEh+MDIyNjQ4Mzc2NF5PUk5eQ1B8XldQTl5QSA0KWkFMfA0KWkFMfDF8SDFeRHJ1ZyByZWFjdGlvbnNed2ViUEFTfEIwMV5CYWNsb2Zlbl53ZWJQQVN8UjAyXkRydWcgYWxsZXJneV53ZWJQQVN8MjAwMDAzMTZ8fHx8fDIwNDQ4XkRhbHleTWF0dGhldyBHZW9yZ2VeXl5Ecl5ed2ViUEFTfDIwMjIwMzA0MTExNDA2fHRoZXJlc2FieV5UaGVyZXNhIEJ5cm5lIE1ESEJed2ViUEFTfFBOSF5QYWxtZXJzdG9uIE5vcnRoIEhvc3BpdGFsXndlYlBBU3xBbGxlcmd5IHRvIEJhY2xvZmVufDFeXndlYlBBU15eVFBTDQpaQUx8MnxIM15PdGhlciBhbGxlcmdpZXNed2ViUEFTfEswMV5LaXdpZnJ1aXRed2ViUEFTfFIwNl5Gb29kIGludG9sZXJhbmNlXndlYlBBU3wyMDIyMDMwM3x8fHx8MjAxNjdeR1JFRU5ISUxMXkRBVklEXl5eXl53ZWJQQVN8MjAyMjAzMDMxNzAxNDd8dGhlcmVzYWJ5XlRoZXJlc2EgQnlybmUgTURIQl53ZWJQQVN8UE5IXlBhbG1lcnN0b24gTm9ydGggSG9zcGl0YWxed2ViUEFTfFBhdGllbnQgaGFzIGFuIGludG9sZXJhbmNlIHRvIEtpd2lmcnVpdHwxXl53ZWJQQVNeXlRQUw0KWkFMfDN8SDNeT3RoZXIgYWxsZXJnaWVzXndlYlBBU3xQMDFeUGVhbnV0XndlYlBBU3xSMDVeRm9vZCBhbGxlcmd5XndlYlBBU3wyMDAwMDMwM3x8fHx8MjAxMTheSm9obnN0b25eTWF0dGhldyBSb2JlcnReXl5Ecl5ed2ViUEFTfDIwMjIwMzAzMTY1OTU2fHRoZXJlc2FieV5UaGVyZXNhIEJ5cm5lIE1ESEJed2ViUEFTfFBOSF5QYWxtZXJzdG9uIE5vcnRoIEhvc3BpdGFsXndlYlBBU3xBbGxlcmd5IHRvIFBlYW51dHN8MV5ed2ViUEFTXl5UUFMNClpBTHw0fE5ISU1XU15NZWRpY2FsIFdhcm5pbmcgU3lzdGVtXndlYlBBU3xeQmFjbG9mZW58fDIwMDMwODIxfFd8fHx8fHx8NDMxMV5eTkhJTVdTfHwxXl5OSElNV1MNClpMU3wNClpMU3wxfFIxMV5DUE1JUCBTMzQoMSkoYSkoaSleUkhJUF9MZWdhbFN0YXR1c3wyMDIyMDMwMTE2NTIwNHx8UjA0Xk5vdCByZWFzIHByYWN0aWNhbF5SSElQX1M3QUNvbnN1bHRhdGlvbnw0Nzg0OV5CYXJuZXNeQWJieV5eXl5eMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjIuMHxNMzZeUE4gUG9saWNlXlJISVBfUGxhY2VvZk9jY3VycmVuY2V8MjAyMjA4MjgxNjUyMDR8MjAyMjA4MTR8VGhpcyBpcyBjb21tZW50cyBtYWRlIHdpdGhpbiB0aGUgcGF0aWVudHMgbGVnYWwgc3RhdHVzIEV4dHJhIGNvbW1lbnRzIG1hZGUgd2l0aGluIHRoZSBwYXRpZW50cyBsZWdhbCBzdGF0dXN8dGhlcmVzYWJ5XlRoZXJlc2EgQnlybmUgTURIQl53ZWJQQVN8MjAyMjAzMDExNjUzMTh8dGhlcmVzYWJ5XlRoZXJlc2EgQnlybmUgTURIQl53ZWJQQVN8MjAyMjAzMDExNjUzMjY="
