CodeSystem:  NZCentralRegionReligionCodeSystem
Id: nzcr-religion-cs
Title: "NZ Central Region - NZ Religion Code System"
Description:  "Religion codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionPatientReligionCS
* ^experimental = false
* ^caseSensitive = true

* #R01	"C of E/Anglican"
* #R02	"Agnostic"
* #R03	"Assembly of God"
* #R04	"Apostolic"
* #R05	"Atheist"
* #R06	"Bahai"
* #R07	"Baptist"
* #R08	"Brethren"
* #R09	"Buddhist"
* #R10	"Christian"
* #R11	"Church of Christ"
* #R12	"Christian Unspecific"
* #R13	"Cook Isld. Christian"
* #R14	"Congregational"
* #R15	"Druid"
* #R16	"Episcopalian"
* #R17	"Greek Orthodox"
* #R18	"Hebrew/Jewish"
* #R19	"Hindu"
* #R20	"Jehovahs Witness"
* #R21	"New Life Centre"
* #R22	"Latter Day Saints"
* #R23	"Lutheran"
* #R24	"Methodist"
* #R25	"Muslim"
* #R26	"No Religion"
* #R27	"Objects to question"
* #R28	"Open Bretheren"
* #R29	"Any other church"
* #R30	"Pentecostal"
* #R31	"Pacific Is Christian"
* #R32	"Pacific Is Presbytrn"
* #R33	"Presbyterian"
* #R34	"Protestant"
* #R35	"Quaker"
* #R36	"Roman Catholic"
* #R37	"Ringatu"
* #R38	"Ratana"
* #R39	"Salvation Army"


ValueSet: NZCentralRegionReligionValueSet
Id: nzcr-religion-vs
Title: "NZ Central Region - NZ Religion Value Set"
Description:  "NZ Religion Codes ex. WebPAS in NZ Central Region"

* ^url = $NZCentralRegionPatientReligionVS
* ^experimental = false

* include codes from system nzcr-religion-cs
