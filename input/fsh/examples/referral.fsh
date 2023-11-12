// Example Instance of Referral flavour of ServiceRequest
Instance: Referral
InstanceOf: NZCentralRegionReferral
Description: "An example of a Referral flavour of ServiceRequest resource, in Te Whatu Ora Central Region"

* identifier
  * use = #usual
  * system = $NZCentralRegionReferralId
  * value = "43372609"
  * type.coding
    * code = #LR
    * system = $HL7IdentifierTypeCS
    * display = "Local Registry ID"

* status = #draft
* intent = #order

* code.coding
  * code = #R02
  * system = $NZCentralRegionReferralTypeRICS
  * display = "Allied Health"

* priority = #routine

* reasonCode.coding
  * code = #K589
  * system = $NZCentralRegionReferralReasonCS
  * display = "Irritable bowel syndrome without diarrho"
  
* locationCode.coding
  * code = #MDT
  * system = $NZCentralRegionDepartmentCS
  * display = "MC Dietetics"

* authoredOn = "2022-02-10"

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
    * value = "ABC1234"

* requester
  * type = #Practitioner
  * identifier
    * use = #usual
    * type
      * coding
        * code = #LR
        * system = $HL7IdentifierTypeCS
        * display = "Local Registry ID"
    * system = $NZCentralRegionPASPractitioner
    * value = "25339"
  * display = "Hanekom, Petrus Jurgens Dr"

* performer
  * type = #Practitioner
  * identifier
    * use = #usual
    * type
      * coding
        * code = #LR
        * system = $HL7IdentifierTypeCS
        * display = "Local Registry ID"
    * system = $NZCentralRegionPASPractitioner
    * value = "80791"
  * display = "Beale, Claire"

* extension[referral]
  * extension[preferredSite].valueCoding
    * code = #POPD
    * system = $NZCentralRegionReferralSiteCS
    * display = "Palmerston North Outpatients"

  * extension[referralSource].valueCoding
    * code = #R08
    * system = $NZCentralRegionReferralSourceCS
    * display = "General Practitioner"

  * extension[referringPractice].valueReference
    * type = "Organisation"
    * identifier
      * use = #usual
      * system = $NZCentralRegionPASPractice
      * value = #16478
      * type.coding
        * code = #LR
        * system = $HL7IdentifierTypeCS
        * display = "Local Registry ID"
    * display = "The Palms Medical Centre"

  * extension[healthPurchaser].valueCoding
    * code = #35M
    * system = $NZCentralRegionHealthPurchaserCS
    * display = "MDHB Funded"

  * extension[clinicType].valueCoding
    * code = #MDT
    * system = $NZCentralRegionClinicCS
    * display = "MC Dietetics"

  * extension[lastUpdated].valueDateTime = "2022-02-10T12:55:27+12:00"

  * extension[informGP].valueBoolean = false

* meta.extension[hl7v2Message].valueBase64Binary = "TVNIfF5+XCZ8UFJPRF9XZWJQQVNeUlBBU3xNQ0RIQl5HMDAwMzN8UmVnaW9uYWwgSFVCXlJIVUJ8UkhJUF5HMDk5OTl8MjAyMjAyMTAxMjU1MjgwMDArMTMwMHx8UkVGXkkxMnwxMDhQMDAwMDAwMDA0MjE3NzE4MnxQfDIuNApSRjF8UF5QZW5kaW5nXlJISVAtUmVmZXJyYWxTdGF0dXN8U0VNXjMgU2VtaS11cmdlbnRed2ViUEFTfFIwMl5BbGxpZWQgaGVhbHRoXndlYlBBU3x8UnxOb3QgRW50ZXJlZF5SZWZlcnJhbCBJRHwyMDIyMDIxMDAwMDAwMHx8MjAyMjAyMTAwMDAwMDB8fDQzMzcyNjA5XndlYlBBU14yLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMS4wClBSRHxSUF5ed2ViUEFTfEhhbmVrb21eUGV0cnVzIEp1cmdlbnNeXl5EcgpQUkR8UlReXndlYlBBU3xCZWFsZV5DbGFpcmUKUElEfHx8QUJDMTIzNF5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjJ8fENJVElaRU5eTUFSSUVeUEFUUklDSUFeXk1SU3x8MTk1MjEwMjIwMDAwMDB8RnxDSVRJWkVOXk1BUklFfkNJVElaRU5eTUFSSUVeUEFUUklDSUF8MTFeTlogRXVyb3BlYW4gLyBQYWtlaGFeTlpISVN8MTIgTm90aGluZyBTdHJlZXReXkFzaGh1cnN0Xl40ODEwXk5FVyBaRUFMQU5EXkN+Xl5eXl5ORVcgWkVBTEFORF5NfDE4MTR8MDYzMjY5MDQ3XlBSTl5QSF5naWJieS5tYXJpZUBpbnNwaXJlLm5ldC5uen4wMjExNjAzMzI5Xk9STl5DUHxeV1BOXlBIfHxNXk1hcnJpZWReSEw3MDAwMnx8fHx8fDExXk5aIEV1cm9wZWFuIC8gUGFrZWhhXk5aSElTfHx8fFl8fEVMSV5FbGlnaWJsZV5SSElQX1Jlc2lkZW50X1N0YXR1c3x8TgpQRDF8fHxUaGUgUGFsbXMgTWVkaWNhbCBDZW50cmVeXjE2NDc4LjBeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjMuMHwyNTMzOV5IYW5la29tXlBldHJ1cyBKdXJnZW5zXl5eRHJeXl4mMi4xNi44NDAuMS4xMTM4ODMuMi4xOC42Ni4zLjIuMApOSzF8MXxDSVRJWkVOLF5DWVJJTCxeXl5NUnwxNl5TcG91c2Ved2ViUEFTfHwwNjMyNjkwNDdeUFJOXlBIfjAyNzU3MTUwNjAzXk9STl5DUHxeV1BOXlBICk5LMXwyfCxeQ0lUSVpFTiwgRE9OTkEsXkRPTk5BLHwxNV5PdGhlcl53ZWJQQVN8fDMyNjkwNjZeUFJOXlBIfjAyMTc1MTk0NF5PUk5eQ1B8MDI3NTIyOTgzMF5XUE5eUEgKUFYxfHxPfE1EVFBDXl5eNDMxMSY0MzExfHx8fDgwNzkxXkJlYWxlXkNsYWlyZV5eXl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wfDI1MzM5XkhhbmVrb21eUGV0cnVzIEp1cmdlbnNeXl5Ecl5eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wfDgyNDA2XkNsb3VnaF5QYW1lbGFeXl5Nc15eXiYyLjE2Ljg0MC4xLjExMzg4My4yLjE4LjY2LjMuMi4wfERJRXx8fHxSMDh8fHx8fDQzMzcyNjA5Xl5eJjIuMTYuODQwLjEuMTEzODgzLjIuMTguNjYuMy4xLjB8MzV8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHwyMDIyMDIxMDAwMDAwMApaQUx8ClpYVnx8fHx8fFNFTV4zIFNlbWktdXJnZW50XndlYlBBU3xJUlJCT1deSXJyaXRhYmxlIEJvd2VsIFN5bmRyb21lXndlYlBBU3x8MjAyMjAyMTB8fHx8fHxSMDheR2VuZXJhbCBwcmFjdGl0aW9uZXJed2ViUEFTfHx8fHx8fHx8fHx8fHx8fHxOfHxSMDJeQWxsaWVkIGhlYWx0aF53ZWJQQVN8UE9QRF5QYWxtZXJzdG9uIE5vcnRoIE91dHBhdGllbnRzXndlYlBBU3wyMDIyMDIxMHxNRFReTUMgRGlldGV0aWNzXndlYlBBU3x8fE1EVF5NQyBEaWV0ZXRpY3Ned2ViUEFTfDIwMjIwMjEwMTI1NTI3fHx8fHx8fHwxNjQ3OF5UaGUgUGFsbXMgTWVkaWNhbCBDZW50cmVed2ViUEFTfHwzNU1eTURIQiBmdW5kZWRed2ViUEFTClpMU3w="
