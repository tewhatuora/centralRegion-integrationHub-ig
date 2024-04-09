CodeSystem:  NZCentralRegionHospitalCodeSystem
Id: nzcr-hospital-code-cs
Title: "NZ Central Region - Hospital Code System"
Description:  "Hospital identification codes ex. WebPAS in NZ Central Region" 

* ^url = $NZCentralRegionHospitalCS
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #PNH     "Palmerston North Hospital"
* #WRH     "Wairarapa Hospital"
* #WHN     "Whanganui Hospital"

* #5750    "Whanganui Mental Health Services"
* #1234    "New Zealand Health Information Service"
* #6001    "Centre for Adverse Reaction Monitoring"

* #3914    "Alexandra Hospital"
* #3111    "Ashburton Hospital"
* #3260    "Auckland City Hospital"
* #4114    "Bay of Islands Hospital"
* #3240    "Botany Downs Primary Birthing Unit"
* #9116    "Botany SuperClinic"
* #5918    "Buller Health"
* #4013    "Burwood Hospital"
* #4011    "Christchurch Hospital"
* #4014    "Christchurch Womens Hospital"
* #4025    "Darfield Hospital"
* #4113    "Dargaville Hospital"
* #4211    "Dunedin Hospital"
* #5111    "Dunstan Hospital"
* #4028    "Ellesmere Hospital"
* #3232    "Franklin Memorial Hospital"
* #3411    "Gisborne Hospital"
* #8597    "Gore Hospital"
* #3212    "Greenlane Clinical Centre"
* #3612    "Hawkes Bay Hospital"
* #5812    "Hutt Hospital"
* #4021    "Kaikoura Hospital"
* #4112    "Kaitaia Hospital"
* #5816    "Kenepuru Hospital"
* #4513    "Lakes District Hospital"
* #3250    "Manukau SuperClinic"
* #5331    "Matariki Hospital"
* #3214    "Middlemore Hospital"
* #3911    "Nelson Hospital"
* #3215    "North Shore Hospital"
* #3314    "Opotiki Community Care Centre"
* #9991    "Overseas Hospital of Transfer"
* #4019    "Oxford Hospital"
* #4311    "Palmerston North Hospital"
* #3221    "Papakura Obstetric Hospital"
* #3220    "Pukekohe Hospital"
* #4027    "Rangiora Hospital"
* #5913    "Reefton Health Services"
* #5312    "Rotorua Hospital"
* #4511    "Southland Hospital"
* #4711    "Taranaki Base Hospital"
* #5329    "Taupo Hospital"
* #4911    "Tauranga Hospital"
* #5313    "Te Kuiti Community Hospital"
* #5911    "Te Nikau Grey Hospital"
* #4912    "Te Puke Community Health Centre"
* #4012    "The Princess Margaret Hospital"
* #4411    "Timaru Hospital"
* #5323    "Tokoroa Hospital"
* #4024    "Waikari Hospital"
* #5311    "Waikato Hospital"
* #5511    "Wairarapa Hospital"
* #3811    "Wairau Hospital"
* #3216    "Waitakere Hospital"
* #4212    "Wakari Hospital"
* #5811    "Wellington Hospital"
* #3311    "Whakatane Hospital"
* #5711    "Whanganui Hospital"
* #4111    "Whangarei Hospital"

ValueSet: NZCentralRegionHospitalValueSet
Id: nzcr-hospital-code-vs
Title: "NZ Central Region - Hospital Value Set"
Description:  "Hospital identification codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionHospitalVS
* ^status = #active
* ^experimental = false

* include codes from system nzcr-hospital-code-cs
* include $HL7NullFlavorCS#NP