require "capifla/version"

module Capifla
  class Error < StandardError; end

  def self.start
    puts "Please input the name of country which you want to know"

    input = gets.chomp

    capi = {
      "Aruba"=>"Oranjestad",
      "Afghanistan"=>"Kabul",
      "Angola"=>"Luanda",
      "Anguilla"=>"TheValley",
      "ÅlandIslands"=>"Mariehamn",
      "Albania"=>"Tirana",
      "Andorra"=>"AndorralaVella",
      "UnitedArabEmirates"=>"AbuDhabi",
      "Argentina"=>"BuenosAires",
      "Armenia"=>"Yerevan",
      "AmericanSamoa"=>"PagoPago",
      "FrenchSouthernandAntarcticLands"=>"Port-aux-Français",
      "AntiguaandBarbuda"=>"SaintJohn",
      "Australia"=>"Canberra",
      "Austria"=>"Vienna",
      "Azerbaijan"=>"Baku",
      "Burundi"=>"Bujumbura",
      "Belgium"=>"Brussels",
      "Benin"=>"Porto-Novo",
      "BurkinaFaso"=>"Ouagadougou",
      "Bangladesh"=>"Dhaka",
      "Bulgaria"=>"Sofia",
      "Bahrain"=>"Manama",
      "Bahamas"=>"Nassau",
      "BosniaandHerzegovina"=>"Sarajevo",
      "SaintBarthélemy"=>"Gustavia",
      "SaintHelena,AscensionandTristandaCunha"=>"Jamestown",
      "Belarus"=>"Minsk",
      "Belize"=>"Belmopan",
      "Bermuda"=>"Hamilton",
      "Bolivia"=>"Sucre",
      "Brazil"=>"Brasília",
      "Barbados"=>"Bridgetown",
      "Brunei"=>"BandarSeriBegawan",
      "Bhutan"=>"Thimphu",
      "BouvetIsland"=>"",
      "Botswana"=>"Gaborone",
      "CentralAfricanRepublic"=>"Bangui",
      "Canada"=>"Ottawa",
      "Cocos(Keeling)Islands"=>"WestIsland",
      "Switzerland"=>"Bern",
      "Chile"=>"Santiago",
      "China"=>"Beijing",
      "IvoryCoast"=>"Yamoussoukro",
      "Cameroon"=>"Yaoundé",
      "DRCongo"=>"Kinshasa",
      "RepublicoftheCongo"=>"Brazzaville",
      "CookIslands"=>"Avarua",
      "Colombia"=>"Bogotá",
      "Comoros"=>"Moroni",
      "CapeVerde"=>"Praia",
      "CostaRica"=>"SanJosé",
      "Cuba"=>"Havana",
      "Curaçao"=>"Willemstad",
      "ChristmasIsland"=>"FlyingFishCove",
      "CaymanIslands"=>"GeorgeTown",
      "Cyprus"=>"Nicosia",
      "Czechia"=>"Prague",
      "Germany"=>"Berlin",
      "Djibouti"=>"Djibouti",
      "Dominica"=>"Roseau",
      "Denmark"=>"Copenhagen",
      "DominicanRepublic"=>"SantoDomingo",
      "Algeria"=>"Algiers",
      "Ecuador"=>"Quito",
      "Egypt"=>"Cairo",
      "Eritrea"=>"Asmara",
      "WesternSahara"=>"ElAaiún",
      "Spain"=>"Madrid",
      "Estonia"=>"Tallinn",
      "Ethiopia"=>"AddisAbaba",
      "Finland"=>"Helsinki",
      "Fiji"=>"Suva",
      "FalklandIslands"=>"Stanley",
      "France"=>"Paris",
      "FaroeIslands"=>"Tórshavn",
      "Micronesia"=>"Palikir",
      "Gabon"=>"Libreville",
      "UnitedKingdom"=>"London",
      "Georgia"=>"Tbilisi",
      "Guernsey"=>"St.PeterPort",
      "Ghana"=>"Accra",
      "Gibraltar"=>"Gibraltar",
      "Guinea"=>"Conakry",
      "Guadeloupe"=>"Basse-Terre",
      "Gambia"=>"Banjul",
      "Guinea-Bissau"=>"Bissau",
      "EquatorialGuinea"=>"Malabo",
      "Greece"=>"Athens",
      "Grenada"=>"St.George",
      "Greenland"=>"Nuuk",
      "Guatemala"=>"GuatemalaCity",
      "FrenchGuiana"=>"Cayenne",
      "Guam"=>"Hagåtña",
      "Guyana"=>"Georgetown",
      "HongKong"=>"CityofVictoria",
      "HeardIslandandMcDonaldIslands"=>"",
      "Honduras"=>"Tegucigalpa",
      "Croatia"=>"Zagreb",
      "Haiti"=>"Port-au-Prince",
      "Hungary"=>"Budapest",
      "Indonesia"=>"Jakarta",
      "IsleofMan"=>"Douglas",
      "India"=>"NewDelhi",
      "BritishIndianOceanTerritory"=>"DiegoGarcia",
      "Ireland"=>"Dublin",
      "Iran"=>"Tehran",
      "Iraq"=>"Baghdad",
      "Iceland"=>"Reykjavik",
      "Israel"=>"Jerusalem",
      "Italy"=>"Rome",
      "Jamaica"=>"Kingston",
      "Jersey"=>"SaintHelier",
      "Jordan"=>"Amman",
      "Japan"=>"Tokyo",
      "Kazakhstan"=>"Astana",
      "Kenya"=>"Nairobi",
      "Kyrgyzstan"=>"Bishkek",
      "Cambodia"=>"PhnomPenh",
      "Kiribati"=>"SouthTarawa",
      "SaintKittsandNevis"=>"Basseterre",
      "SouthKorea"=>"Seoul",
      "Kosovo"=>"Pristina",
      "Kuwait"=>"KuwaitCity",
      "Laos"=>"Vientiane",
      "Lebanon"=>"Beirut",
      "Liberia"=>"Monrovia",
      "Libya"=>"Tripoli",
      "SaintLucia"=>"Castries",
      "Liechtenstein"=>"Vaduz",
      "SriLanka"=>"Colombo",
      "Lesotho"=>"Maseru",
      "Lithuania"=>"Vilnius",
      "Luxembourg"=>"Luxembourg",
      "Latvia"=>"Riga",
      "Macau"=>"",
      "SaintMartin"=>"Marigot",
      "Morocco"=>"Rabat",
      "Monaco"=>"Monaco",
      "Moldova"=>"Chișinău",
      "Madagascar"=>"Antananarivo",
      "Maldives"=>"Malé",
      "Mexico"=>"MexicoCity",
      "MarshallIslands"=>"Majuro",
      "NorthMacedonia"=>"Skopje",
      "Mali"=>"Bamako",
      "Malta"=>"Valletta",
      "Myanmar"=>"Naypyidaw",
      "Montenegro"=>"Podgorica",
      "Mongolia"=>"UlanBator",
      "NorthernMarianaIslands"=>"Saipan",
      "Mozambique"=>"Maputo",
      "Mauritania"=>"Nouakchott",
      "Montserrat"=>"Plymouth",
      "Martinique"=>"Fort-de-France",
      "Mauritius"=>"PortLouis",
      "Malawi"=>"Lilongwe",
      "Malaysia"=>"KualaLumpur",
      "Mayotte"=>"Mamoudzou",
      "Namibia"=>"Windhoek",
      "NewCaledonia"=>"Nouméa",
      "Niger"=>"Niamey",
      "NorfolkIsland"=>"Kingston",
      "Nigeria"=>"Abuja",
      "Nicaragua"=>"Managua",
      "Niue"=>"Alofi",
      "Netherlands"=>"Amsterdam",
      "Norway"=>"Oslo",
      "Nepal"=>"Kathmandu",
      "Nauru"=>"Yaren",
      "NewZealand"=>"Wellington",
      "Oman"=>"Muscat",
      "Pakistan"=>"Islamabad",
      "Panama"=>"PanamaCity",
      "PitcairnIslands"=>"Adamstown",
      "Peru"=>"Lima",
      "Philippines"=>"Manila",
      "Palau"=>"Ngerulmud",
      "PapuaNewGuinea"=>"PortMoresby",
      "Poland"=>"Warsaw",
      "PuertoRico"=>"SanJuan",
      "NorthKorea"=>"Pyongyang",
      "Portugal"=>"Lisbon",
      "Paraguay"=>"Asunción",
      "Palestine"=>"Ramallah",
      "FrenchPolynesia"=>"Papeetē",
      "Qatar"=>"Doha",
      "Réunion"=>"Saint-Denis",
      "Romania"=>"Bucharest",
      "Russia"=>"Moscow",
      "Rwanda"=>"Kigali",
      "SaudiArabia"=>"Riyadh",
      "Sudan"=>"Khartoum",
      "Senegal"=>"Dakar",
      "Singapore"=>"Singapore",
      "SouthGeorgia"=>"KingEdwardPoint",
      "SvalbardandJanMayen"=>"Longyearbyen",
      "SolomonIslands"=>"Honiara",
      "SierraLeone"=>"Freetown",
      "ElSalvador"=>"SanSalvador",
      "SanMarino"=>"CityofSanMarino",
      "Somalia"=>"Mogadishu",
      "SaintPierreandMiquelon"=>"Saint-Pierre",
      "Serbia"=>"Belgrade",
      "SouthSudan"=>"Juba",
      "SãoToméandPríncipe"=>"SãoTomé",
      "Suriname"=>"Paramaribo",
      "Slovakia"=>"Bratislava",
      "Slovenia"=>"Ljubljana",
      "Sweden"=>"Stockholm",
      "Eswatini"=>"Lobamba",
      "SintMaarten"=>"Philipsburg",
      "Seychelles"=>"Victoria",
      "Syria"=>"Damascus",
      "TurksandCaicosIslands"=>"CockburnTown",
      "Chad"=>"N'Djamena",
      "Togo"=>"Lomé",
      "Thailand"=>"Bangkok",
      "Tajikistan"=>"Dushanbe",
      "Tokelau"=>"Fakaofo",
      "Turkmenistan"=>"Ashgabat",
      "Timor-Leste"=>"Dili",
      "Tonga"=>"Nuku'alofa",
      "TrinidadandTobago"=>"PortofSpain",
      "Tunisia"=>"Tunis",
      "Turkey"=>"Ankara",
      "Tuvalu"=>"Funafuti",
      "Taiwan"=>"Taipei",
      "Tanzania"=>"Dodoma",
      "Uganda"=>"Kampala",
      "Ukraine"=>"Kyiv",
      "UnitedStatesMinorOutlyingIslands"=>"",
      "Uruguay"=>"Montevideo",
      "UnitedStates"=>"WashingtonD.C.",
      "Uzbekistan"=>"Tashkent",
      "VaticanCity"=>"VaticanCity",
      "SaintVincentandtheGrenadines"=>"Kingstown",
      "Venezuela"=>"Caracas",
      "BritishVirginIslands"=>"RoadTown",
      "UnitedStatesVirginIslands"=>"CharlotteAmalie",
      "Vietnam"=>"Hanoi",
      "Vanuatu"=>"PortVila",
      "WallisandFutuna"=>"Mata-Utu",
      "Samoa"=>"Apia",
      "Yemen"=>"Sana'a",
      "SouthAfrica"=>"Pretoria",
      "Zambia"=>"Lusaka",
      "Zimbabwe"=>"Harare"
    }.freeze

    fla={
      "Aruba"=>"🇦🇼",
      "Afghanistan"=>"🇦🇫",
      "Angola"=>"🇦🇴",
      "Anguilla"=>"🇦🇮",
      "ÅlandIslands"=>"🇦🇽",
      "Albania"=>"🇦🇱",
      "Andorra"=>"🇦🇩",
      "UnitedArabEmirates"=>"🇦🇪",
      "Argentina"=>"🇦🇷",
      "Armenia"=>"🇦🇲",
      "AmericanSamoa"=>"🇦🇸",
      "Antarctica"=>"🇦🇶",
      "FrenchSouthernandAntarcticLands"=>"🇹🇫",
      "AntiguaandBarbuda"=>"🇦🇬",
      "Australia"=>"🇦🇺",
      "Austria"=>"🇦🇹",
      "Azerbaijan"=>"🇦🇿",
      "Burundi"=>"🇧🇮",
      "Belgium"=>"🇧🇪",
      "Benin"=>"🇧🇯",
      "BurkinaFaso"=>"🇧🇫",
      "Bangladesh"=>"🇧🇩",
      "Bulgaria"=>"🇧🇬",
      "Bahrain"=>"🇧🇭",
      "Bahamas"=>"🇧🇸",
      "BosniaandHerzegovina"=>"🇧🇦",
      "SaintBarthélemy"=>"🇧🇱",
      "SaintHelena,AscensionandTristandaCunha"=>"🇸🇭",
      "Belarus"=>"🇧🇾",
      "Belize"=>"🇧🇿",
      "Bermuda"=>"🇧🇲",
      "Bolivia"=>"🇧🇴",
      "CaribbeanNetherlands"=>"",
      "Brazil"=>"🇧🇷",
      "Barbados"=>"🇧🇧",
      "Brunei"=>"🇧🇳",
      "Bhutan"=>"🇧🇹",
      "BouvetIsland"=>"🇧🇻",
      "Botswana"=>"🇧🇼",
      "CentralAfricanRepublic"=>"🇨🇫",
      "Canada"=>"🇨🇦",
      "Cocos(Keeling)Islands"=>"🇨🇨",
      "Switzerland"=>"🇨🇭",
      "Chile"=>"🇨🇱",
      "China"=>"🇨🇳",
      "IvoryCoast"=>"🇨🇮",
      "Cameroon"=>"🇨🇲",
      "DRCongo"=>"🇨🇩",
      "RepublicoftheCongo"=>"🇨🇬",
      "CookIslands"=>"🇨🇰",
      "Colombia"=>"🇨🇴",
      "Comoros"=>"🇰🇲",
      "CapeVerde"=>"🇨🇻",
      "CostaRica"=>"🇨🇷",
      "Cuba"=>"🇨🇺",
      "Curaçao"=>"🇨🇼",
      "ChristmasIsland"=>"🇨🇽",
      "CaymanIslands"=>"🇰🇾",
      "Cyprus"=>"🇨🇾",
      "Czechia"=>"🇨🇿",
      "Germany"=>"🇩🇪",
      "Djibouti"=>"🇩🇯",
      "Dominica"=>"🇩🇲",
      "Denmark"=>"🇩🇰",
      "DominicanRepublic"=>"🇩🇴",
      "Algeria"=>"🇩🇿",
      "Ecuador"=>"🇪🇨",
      "Egypt"=>"🇪🇬",
      "Eritrea"=>"🇪🇷",
      "WesternSahara"=>"🇪🇭",
      "Spain"=>"🇪🇸",
      "Estonia"=>"🇪🇪",
      "Ethiopia"=>"🇪🇹",
      "Finland"=>"🇫🇮",
      "Fiji"=>"🇫🇯",
      "FalklandIslands"=>"🇫🇰",
      "France"=>"🇫🇷",
      "FaroeIslands"=>"🇫🇴",
      "Micronesia"=>"🇫🇲",
      "Gabon"=>"🇬🇦",
      "UnitedKingdom"=>"🇬🇧",
      "Georgia"=>"🇬🇪",
      "Guernsey"=>"🇬🇬",
      "Ghana"=>"🇬🇭",
      "Gibraltar"=>"🇬🇮",
      "Guinea"=>"🇬🇳",
      "Guadeloupe"=>"🇬🇵",
      "Gambia"=>"🇬🇲",
      "Guinea-Bissau"=>"🇬🇼",
      "EquatorialGuinea"=>"🇬🇶",
      "Greece"=>"🇬🇷",
      "Grenada"=>"🇬🇩",
      "Greenland"=>"🇬🇱",
      "Guatemala"=>"🇬🇹",
      "FrenchGuiana"=>"🇬🇫",
      "Guam"=>"🇬🇺",
      "Guyana"=>"🇬🇾",
      "HongKong"=>"🇭🇰",
      "HeardIslandandMcDonaldIslands"=>"🇭🇲",
      "Honduras"=>"🇭🇳",
      "Croatia"=>"🇭🇷",
      "Haiti"=>"🇭🇹",
      "Hungary"=>"🇭🇺",
      "Indonesia"=>"🇮🇩",
      "IsleofMan"=>"🇮🇲",
      "India"=>"🇮🇳",
      "BritishIndianOceanTerritory"=>"🇮🇴",
      "Ireland"=>"🇮🇪",
      "Iran"=>"🇮🇷",
      "Iraq"=>"🇮🇶",
      "Iceland"=>"🇮🇸",
      "Israel"=>"🇮🇱",
      "Italy"=>"🇮🇹",
      "Jamaica"=>"🇯🇲",
      "Jersey"=>"🇯🇪",
      "Jordan"=>"🇯🇴",
      "Japan"=>"🇯🇵",
      "Kazakhstan"=>"🇰🇿",
      "Kenya"=>"🇰🇪",
      "Kyrgyzstan"=>"🇰🇬",
      "Cambodia"=>"🇰🇭",
      "Kiribati"=>"🇰🇮",
      "SaintKittsandNevis"=>"🇰🇳",
      "SouthKorea"=>"🇰🇷",
      "Kosovo"=>"🇽🇰",
      "Kuwait"=>"🇰🇼",
      "Laos"=>"🇱🇦",
      "Lebanon"=>"🇱🇧",
      "Liberia"=>"🇱🇷",
      "Libya"=>"🇱🇾",
      "SaintLucia"=>"🇱🇨",
      "Liechtenstein"=>"🇱🇮",
      "SriLanka"=>"🇱🇰",
      "Lesotho"=>"🇱🇸",
      "Lithuania"=>"🇱🇹",
      "Luxembourg"=>"🇱🇺",
      "Latvia"=>"🇱🇻",
      "Macau"=>"🇲🇴",
      "SaintMartin"=>"🇲🇫",
      "Morocco"=>"🇲🇦",
      "Monaco"=>"🇲🇨",
      "Moldova"=>"🇲🇩",
      "Madagascar"=>"🇲🇬",
      "Maldives"=>"🇲🇻",
      "Mexico"=>"🇲🇽",
      "MarshallIslands"=>"🇲🇭",
      "NorthMacedonia"=>"🇲🇰",
      "Mali"=>"🇲🇱",
      "Malta"=>"🇲🇹",
      "Myanmar"=>"🇲🇲",
      "Montenegro"=>"🇲🇪",
      "Mongolia"=>"🇲🇳",
      "NorthernMarianaIslands"=>"🇲🇵",
      "Mozambique"=>"🇲🇿",
      "Mauritania"=>"🇲🇷",
      "Montserrat"=>"🇲🇸",
      "Martinique"=>"🇲🇶",
      "Mauritius"=>"🇲🇺",
      "Malawi"=>"🇲🇼",
      "Malaysia"=>"🇲🇾",
      "Mayotte"=>"🇾🇹",
      "Namibia"=>"🇳🇦",
      "NewCaledonia"=>"🇳🇨",
      "Niger"=>"🇳🇪",
      "NorfolkIsland"=>"🇳🇫",
      "Nigeria"=>"🇳🇬",
      "Nicaragua"=>"🇳🇮",
      "Niue"=>"🇳🇺",
      "Netherlands"=>"🇳🇱",
      "Norway"=>"🇳🇴",
      "Nepal"=>"🇳🇵",
      "Nauru"=>"🇳🇷",
      "NewZealand"=>"🇳🇿",
      "Oman"=>"🇴🇲",
      "Pakistan"=>"🇵🇰",
      "Panama"=>"🇵🇦",
      "PitcairnIslands"=>"🇵🇳",
      "Peru"=>"🇵🇪",
      "Philippines"=>"🇵🇭",
      "Palau"=>"🇵🇼",
      "PapuaNewGuinea"=>"🇵🇬",
      "Poland"=>"🇵🇱",
      "PuertoRico"=>"🇵🇷",
      "NorthKorea"=>"🇰🇵",
      "Portugal"=>"🇵🇹",
      "Paraguay"=>"🇵🇾",
      "Palestine"=>"🇵🇸",
      "FrenchPolynesia"=>"🇵🇫",
      "Qatar"=>"🇶🇦",
      "Réunion"=>"🇷🇪",
      "Romania"=>"🇷🇴",
      "Russia"=>"🇷🇺",
      "Rwanda"=>"🇷🇼",
      "SaudiArabia"=>"🇸🇦",
      "Sudan"=>"🇸🇩",
      "Senegal"=>"🇸🇳",
      "Singapore"=>"🇸🇬",
      "SouthGeorgia"=>"🇬🇸",
      "SvalbardandJanMayen"=>"🇸🇯",
      "SolomonIslands"=>"🇸🇧",
      "SierraLeone"=>"🇸🇱",
      "ElSalvador"=>"🇸🇻",
      "SanMarino"=>"🇸🇲",
      "Somalia"=>"🇸🇴",
      "SaintPierreandMiquelon"=>"🇵🇲",
      "Serbia"=>"🇷🇸",
      "SouthSudan"=>"🇸🇸",
      "SãoToméandPríncipe"=>"🇸🇹",
      "Suriname"=>"🇸🇷",
      "Slovakia"=>"🇸🇰",
      "Slovenia"=>"🇸🇮",
      "Sweden"=>"🇸🇪",
      "Eswatini"=>"🇸🇿",
      "SintMaarten"=>"🇸🇽",
      "Seychelles"=>"🇸🇨",
      "Syria"=>"🇸🇾",
      "TurksandCaicosIslands"=>"🇹🇨",
      "Chad"=>"🇹🇩",
      "Togo"=>"🇹🇬",
      "Thailand"=>"🇹🇭",
      "Tajikistan"=>"🇹🇯",
      "Tokelau"=>"🇹🇰",
      "Turkmenistan"=>"🇹🇲",
      "Timor-Leste"=>"🇹🇱",
      "Tonga"=>"🇹🇴",
      "TrinidadandTobago"=>"🇹🇹",
      "Tunisia"=>"🇹🇳",
      "Turkey"=>"🇹🇷",
      "Tuvalu"=>"🇹🇻",
      "Taiwan"=>"🇹🇼",
      "Tanzania"=>"🇹🇿",
      "Uganda"=>"🇺🇬",
      "Ukraine"=>"🇺🇦",
      "UnitedStatesMinorOutlyingIslands"=>"🇺🇲",
      "Uruguay"=>"🇺🇾",
      "UnitedStates"=>"🇺🇸",
      "Uzbekistan"=>"🇺🇿",
      "VaticanCity"=>"🇻🇦",
      "SaintVincentandtheGrenadines"=>"🇻🇨",
      "Venezuela"=>"🇻🇪",
      "BritishVirginIslands"=>"🇻🇬",
      "UnitedStatesVirginIslands"=>"🇻🇮",
      "Vietnam"=>"🇻🇳",
      "Vanuatu"=>"🇻🇺",
      "WallisandFutuna"=>"🇼🇫",
      "Samoa"=>"🇼🇸",
      "Yemen"=>"🇾🇪",
      "SouthAfrica"=>"🇿🇦",
      "Zambia"=>"🇿🇲",
      "Zimbabwe"=>"🇿🇼"
    }.freeze

    if capi[input]
      p capi[input],fla[input]
    else
      p "There is no such a country"
    end
  end
end
