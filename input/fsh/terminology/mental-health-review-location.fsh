CodeSystem:  NZCentralRegionMentalHealthReviewLocationCodeSystem
Id: nzcr-mental-health-review-location-code-cs
Title: "NZ Central Region - Mental Health Review Location Code System"
Description:  "Mental Health Review Location identification codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionMentalHealthReviewLocationCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #M01   "Jack Allen House"
* #M02   "Mana o te Tangata"
* #M03   "Nikau House"
* #M04   "Orthopaedic Clinic"
* #M05   "Physiotherapy Dept"
* #M06   "Rongopai House"
* #M07   "Square Edge"
* #M08   "Star One Occ Therapy"
* #M09   "St Davids"
* #M10   "CDS Gym"
* #M11   "PN Board Room"
* #M12   "Horo Health Centre"
* #M13   "Dvk Health Centre"
* #M14   "Tararua Health Centr"
* #M15   "Zenith Fitness Gym"
* #M16   "Pool"
* #M17   "Education Centre"
* #M18   "Flip It Gym"
* #M19   "Ward 21"
* #M20   "PN Community"
* #M21   "CAFS"
* #M22   "EIS"
* #M23   "IRTS"
* #M24   "FCMH"
* #M25   "HCMH"
* #M26   "DCMH"
* #M27   "PCMH"
* #M36   "PN Police"
* #WLB   "Lambie Building"
* #WOD   "Outpatient Dept"
* #WOT   "OT Dept"
* #WPR   "Prison"
* #WPT   "Physiotherapy Dept"
* #WRH   "Rangitikei Health"
* #WTH   "Taihape Health"
* #WTW   "Te Whare Kakariki"
* #WWH   "Waimarino Health"
* #YCM   "WR Community"
* #YHO   "WR Mstn Hospital"
* #YSS   "WR SSH Hospital"


ValueSet: NZCentralRegionMentalHealthReviewLocationValueSet
Id: nzcr-mental-health-review-location-vs
Title: "NZ Central Region - Mental Health Review Location Value Set"
Description:  "Mental Health Review Location identification codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionMentalHealthReviewLocationVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-hospital-code-cs
* include codes from system nzcr-mental-health-review-location-code-cs
