CodeSystem:  NZCentralRegionHealthPurchaserCodeSystem
Id: nzcr-health-purchaser-cs
Title: "NZ Central Region - Health Purchaser Code System"
Description:  "Health Purchaser codes; ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionHealthPurchaserCS
* ^experimental = false
* ^caseSensitive = true

* #6   "Privately funded NZ"
* #17  "Accredited employer"
* #19  "Overseas chargeable"
* #20M "MDHB overseas elig"
* #20W "WDHB overseas elig"
* #20Y "WRDHB overseas elig"
* #33W "WHDHB MoH screening"
* #33Y "WRDHB MoH screen"
* #34  "MoH-funded purchase"
* #35M "MDHB funded"
* #35T "TDHB funded"
* #35W "WDHB funded"
* #35Y "WRDHB funded"
* #A0  "ACC direct purchase"

ValueSet: NZCentralRegionHealthPurchaserValueSet
Id: nzcr-health-purchaser-vs
Title: "NZ Central Region - Health Purchaser Value Set"
Description:  "Health Purchaser codes ex. WebPAS in NZ Central Region."

* ^url = $NZCentralRegionHealthPurchaserVS
* ^experimental = false

* include codes from system nzcr-health-purchaser-cs
