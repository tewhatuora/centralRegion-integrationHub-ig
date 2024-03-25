CodeSystem:  NZCentralRegionReferralTypeRICodeSystem
Id: nzcr-referral-type-ri-cs
Title: "NZ Central Region - RI Referral Type Code System"
Description:  "Referral Type codes; ex. WebPAS in NZ Central Region - not to be confused with Waiting List Department codes."

* ^url = $NZCentralRegionReferralTypeRICS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #R01 "Advice"
* #R02 "Allied health"
* #R03 "Assessment"
* #R04 "Cross consulting"
* #R05 "Follow Up"
* #R06 "FSA"
* #R07 "FSA presenting"
* #R08 "Pre-assessment"
* #R09 "Procedure"
* #R10 "Second opinion"
* #R11 "Spec Auth approval"
* #R12 "Hosp-referred test"
* #R13 "Cmty-referred test"
* #R14 "Treatment"
* #R15 "Ward follow-up"
* #R16 "Re-Referral"
* #R17 "Medication review"
* #R18 "Data migration"
* #R19 "Maori Health"

CodeSystem:  NZCentralRegionReferralTypeWUCodeSystem
Id: nzcr-referral-type-wu-cs
Title: "NZ Central Region - WU Referral Type Code System"
Description:  "Waiting List Department Referral Type codes; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionReferralTypeWUCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #ANE "Anaesthetics"
* #ATO "ATR Older People"
* #ATP "ATR Physical Disabil"
* #CAR "Cardiology"
* #CPT "Cardiology PTCA"
* #CTH "Cardiothoracic"
* #DEN "Dental"
* #ED  "Emergency"
* #END "Endoscopy"
* #ENT "Ear Nose and Throat"
* #EYE "Ophthalmology"
* #GAS "Gastroenterology"
* #GS  "General Surgery"
* #GYF "Gynae - Fertility"
* #GYN "Gynaecology"
* #GYS "Gynae - Sterilis'n"
* #HEM "Haematology"
* #IM  "General Medicine"
* #INT "Intervent Procedures"
* #MH  "Mental Health"
* #MXD "Maxillofacial+Dental"
* #MXS "Maxillo-facial Surg"
* #NES "Neurosurgery"
* #NEU "Neurology"
* #OBS "Obstetrics"
* #ONC "Oncology"
* #ORT "Orthopaedics"
* #PAC "Pooled Acute List"
* #PAL "Palliative Medicine"
* #PED "Paediatric Medicine"
* #PLA "Plastics"
* #PSS "Paed Spec Surgery"
* #PYG "Psychogeriatric"
* #RBS "Bowel screening"
* #RDT "Radiotherapy"
* #REN "Renal Medicine"
* #RES "Respiratory"
* #RHE "Rheumatology"
* #SL  "Skin Lesions"
* #URO "Urology"
* #VAS "Vascular surgery"

ValueSet: NZCentralRegionReferralTypeValueSet
Id: nzcr-referral-type-vs
Title: "NZ Central Region - Referral Type Value Set"
Description:  "Referral Type codes ex. WebPAS in NZ Central Region; Union of waiting list department codes and normal referral types."

* ^url = $NZCentralRegionReferralTypeVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-referral-type-ri-cs
* include codes from system nzcr-referral-type-wu-cs
