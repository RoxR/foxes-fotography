# == Schema Information
#
# Table name: models
#
#  id           :integer          not null, primary key
#  name         :string
#  gender       :integer
#  height       :string
#  weight       :string
#  bust         :string
#  waist        :string
#  hips         :string
#  cup          :string
#  dress        :string
#  shoe         :string
#  hair_color   :string
#  hair_length  :string
#  eye_color    :string
#  ethnicity    :string
#  skin_color   :string
#  nudes        :boolean
#  tattoos      :string
#  piercings    :string
#  experience   :string
#  compensation :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null

class Model < ApplicationRecord
  has_and_belongs_to_many :genres

  enum gender: [:female, :male]

  scope :women, -> {
    where(gender: :female)
  }

  scope :men, -> {
    where(gender: :male)
  }

  def self.heights
    [ %Q{4' 0" / 122 cm},
      %Q{4' 1" / 124 cm},
      %Q{4' 2" / 127 cm},
      %Q{4' 3" / 130 cm},
      %Q{4' 4" / 132 cm},
      %Q{4' 5" / 134 cm},
      %Q{4' 6" / 137 cm},
      %Q{4' 7" / 139 cm},
      %Q{4' 8" / 142 cm},
      %Q{4' 9" / 144 cm},
      %Q{4' 10" / 147 cm},
      %Q{4' 11" / 149 cm},
      %Q{5' 0" / 152 cm},
      %Q{5' 1" / 154 cm},
      %Q{5' 2" / 157 cm},
      %Q{5' 3" / 160 cm},
      %Q{5' 4" / 162 cm},
      %Q{5' 5" / 165 cm},
      %Q{5' 6" / 167 cm},
      %Q{5' 7" / 170 cm},
      %Q{5' 8" / 172 cm},
      %Q{5' 9" / 175 cm},
      %Q{5' 10" / 177 cm},
      %Q{5' 11" / 180 cm},
      %Q{6' 0" / 182 cm},
      %Q{6' 1" / 185 cm},
      %Q{6' 2" / 187 cm},
      %Q{6' 3" / 190 cm},
      %Q{6' 4" / 193 cm},
      %Q{6' 5" / 195 cm},
      %Q{6' 6" / 198 cm},
      %Q{6' 7" / 200 cm},
      %Q{6' 8" / 203 cm},
      %Q{6' 9" / 205 cm},
      %Q{6' 10" / 208 cm}
    ]
  end

  def self.weights
    [ "80 lb / 176 kg",
      "81 lb / 178 kg",
      "82 lb / 180 kg",
      "83 lb / 182 kg",
      "84 lb / 185 kg",
      "85 lb / 187 kg",
      "86 lb / 189 kg",
      "87 lb / 191 kg",
      "88 lb / 193 kg",
      "89 lb / 196 kg",
      "90 lb / 198 kg",
      "91 lb / 200 kg",
      "92 lb / 202 kg",
      "93 lb / 204 kg",
      "94 lb / 207 kg",
      "95 lb / 209 kg",
      "96 lb / 211 kg",
      "97 lb / 213 kg",
      "98 lb / 215 kg",
      "99 lb / 218 kg",
      "100 lb / 220 kg",
      "101 lb / 222 kg",
      "102 lb / 224 kg",
      "103 lb / 226 kg",
      "104 lb / 229 kg",
      "105 lb / 231 kg",
      "106 lb / 233 kg",
      "107 lb / 235 kg",
      "108 lb / 237 kg",
      "109 lb / 240 kg",
      "110 lb / 242 kg",
      "111 lb / 244 kg",
      "112 lb / 246 kg",
      "113 lb / 248 kg",
      "114 lb / 251 kg",
      "115 lb / 253 kg",
      "116 lb / 255 kg",
      "117 lb / 257 kg",
      "118 lb / 259 kg",
      "119 lb / 262 kg",
      "120 lb / 264 kg",
      "121 lb / 266 kg",
      "122 lb / 268 kg",
      "123 lb / 270 kg",
      "124 lb / 273 kg",
      "125 lb / 275 kg",
      "126 lb / 277 kg",
      "127 lb / 279 kg",
      "128 lb / 281 kg",
      "129 lb / 284 kg",
      "130 lb / 286 kg",
      "131 lb / 288 kg",
      "132 lb / 290 kg",
      "133 lb / 292 kg",
      "134 lb / 295 kg",
      "135 lb / 297 kg",
      "136 lb / 299 kg",
      "137 lb / 301 kg",
      "138 lb / 303 kg",
      "139 lb / 306 kg",
      "140 lb / 308 kg",
      "141 lb / 310 kg",
      "142 lb / 312 kg",
      "143 lb / 314 kg",
      "144 lb / 317 kg",
      "145 lb / 319 kg",
      "146 lb / 321 kg",
      "147 lb / 323 kg",
      "148 lb / 325 kg",
      "149 lb / 328 kg",
      "150 lb / 330 kg",
      "151 lb / 332 kg",
      "152 lb / 334 kg",
      "153 lb / 337 kg",
      "154 lb / 339 kg",
      "155 lb / 341 kg",
      "156 lb / 343 kg",
      "157 lb / 345 kg",
      "158 lb / 348 kg",
      "159 lb / 350 kg",
      "160 lb / 352 kg",
      "161 lb / 354 kg",
      "162 lb / 356 kg",
      "163 lb / 359 kg",
      "164 lb / 361 kg",
      "165 lb / 363 kg",
      "166 lb / 365 kg",
      "167 lb / 367 kg",
      "168 lb / 370 kg",
      "169 lb / 372 kg",
      "170 lb / 374 kg",
      "171 lb / 376 kg",
      "172 lb / 378 kg",
      "173 lb / 381 kg",
      "174 lb / 383 kg",
      "175 lb / 385 kg",
      "176 lb / 387 kg",
      "177 lb / 389 kg",
      "178 lb / 392 kg",
      "179 lb / 394 kg",
      "180 lb / 396 kg",
      "181 lb / 398 kg",
      "182 lb / 400 kg",
      "183 lb / 403 kg",
      "184 lb / 405 kg",
      "185 lb / 407 kg",
      "186 lb / 409 kg",
      "187 lb / 411 kg",
      "188 lb / 414 kg",
      "189 lb / 416 kg",
      "190 lb / 418 kg",
      "191 lb / 420 kg",
      "192 lb / 422 kg",
      "193 lb / 425 kg",
      "194 lb / 427 kg",
      "195 lb / 429 kg",
      "196 lb / 431 kg",
      "197 lb / 433 kg",
      "198 lb / 436 kg",
      "199 lb / 438 kg",
      "200 lb / 440 kg",
      "201 lb / 442 kg",
      "202 lb / 444 kg",
      "203 lb / 447 kg",
      "204 lb / 449 kg",
      "205 lb / 451 kg",
      "206 lb / 453 kg",
      "207 lb / 455 kg",
      "208 lb / 458 kg",
      "209 lb / 460 kg",
      "210 lb / 462 kg",
      "211 lb / 464 kg",
      "212 lb / 466 kg",
      "213 lb / 469 kg",
      "214 lb / 471 kg",
      "215 lb / 473 kg",
      "216 lb / 475 kg",
      "217 lb / 477 kg",
      "218 lb / 480 kg",
      "219 lb / 482 kg",
      "220 lb / 484 kg",
      "221 lb / 486 kg",
      "222 lb / 488 kg",
      "223 lb / 491 kg",
      "224 lb / 493 kg",
      "225 lb / 495 kg",
      "226 lb / 497 kg",
      "227 lb / 500 kg",
      "228 lb / 502 kg",
      "229 lb / 504 kg",
      "230 lb / 506 kg",
      "231 lb / 508 kg",
      "232 lb / 511 kg",
      "233 lb / 513 kg",
      "234 lb / 515 kg",
      "235 lb / 517 kg",
      "236 lb / 519 kg",
      "237 lb / 522 kg",
      "238 lb / 524 kg",
      "239 lb / 526 kg",
      "240 lb / 528 kg",
      "241 lb / 530 kg",
      "242 lb / 533 kg",
      "243 lb / 535 kg",
      "244 lb / 537 kg",
      "245 lb / 539 kg",
      "246 lb / 541 kg",
      "247 lb / 544 kg",
      "248 lb / 546 kg",
      "249 lb / 548 kg",
      "250 lb / 550 kg",
      "251 lb / 552 kg",
      "252 lb / 555 kg",
      "253 lb / 557 kg",
      "254 lb / 559 kg",
      "255 lb / 561 kg",
      "256 lb / 563 kg",
      "257 lb / 566 kg",
      "258 lb / 568 kg",
      "259 lb / 570 kg",
      "260 lb / 572 kg",
      "261 lb / 574 kg",
      "262 lb / 577 kg",
      "263 lb / 579 kg",
      "264 lb / 581 kg",
      "265 lb / 583 kg",
      "266 lb / 585 kg",
      "267 lb / 588 kg",
      "268 lb / 590 kg",
      "269 lb / 592 kg",
      "270 lb / 594 kg",
      "271 lb / 596 kg",
      "272 lb / 599 kg",
      "273 lb / 601 kg",
      "274 lb / 603 kg",
      "275 lb / 605 kg",
      "276 lb / 607 kg",
      "277 lb / 610 kg",
      "278 lb / 612 kg",
      "279 lb / 614 kg",
      "280 lb / 616 kg",
      "281 lb / 618 kg",
      "282 lb / 621 kg",
      "283 lb / 623 kg",
      "284 lb / 625 kg",
      "285 lb / 627 kg",
      "286 lb / 629 kg",
      "287 lb / 632 kg",
      "288 lb / 634 kg",
      "289 lb / 636 kg",
      "290 lb / 638 kg",
      "291 lb / 640 kg",
      "292 lb / 643 kg",
      "293 lb / 645 kg",
      "294 lb / 647 kg",
      "295 lb / 649 kg",
      "296 lb / 651 kg",
      "297 lb / 654 kg",
      "298 lb / 656 kg",
      "299 lb / 658 kg",
      "300 lb / 660 kg"
    ]
  end

  def self.busts
    [ '32" / 81cm',
      '34" / 86cm',
      '36" / 91.5cm',
      '38" / 96.5cm',
      '40" / 101.5cm',
      '42" / 106.5cm',
      '44" / 112cm',
      '46" / 117cm'
    ]
  end

  def self.waists
    [ '23" / 59 cm',
      '24" / 61.5 cm',
      '25" / 64 cm',
      '26" / 66.5 cm',
      '28" / 71.5 cm',
      '30" / 76.5 cm',
      '32" / 81.5 cm'
    ]
  end

  def self.hips
    [ '33" / 84 cm',
      '34" / 86.5 cm',
      '35" / 89 cm',
      '36" / 91.5 cm',
      '38" / 96.5 cm',
      '40" / 101.5 cm',
      '42" / 106.5 cm'
    ]
  end

  def self.shoes
    [ "5.0 US / 4.0 UK / 37.0 EU",
      "5.5 US / 4.5 UK / 37.5 EU",
      "6.0 US / 5.0 UK / 38.0 EU",
      "6.5 US / 5.5 UK / 38.5 EU",
      "7.0 US / 6.0 UK / 39.5 EU",
      "7.5 US / 6.5 UK / 40.0 EU",
      "8.0 US / 7.0 UK / 40.5 EU",
      "8.5 US / 7.5 UK / 41.5 EU",
      "9.0 US / 8.0 UK / 42.0 EU",
      "9.5 US / 8.5 UK / 42.5 EU",
      "10.0 US / 9.0 UK / 43.0 EU",
      "10.5 US / 9.5 UK / 44.0 EU",
      "11.0 US / 10.0 UK / 44.5 EU",
      "11.5 US / 10.5 UK / 45.0 EU",
      "12.0 US / 11.0 UK / 45.5 EU",
      "12.5 US / 11.5 UK / 46.5 EU",
      "13.0 US / 12.0 UK / 47.0 EU",
      "13.5 US / 12.5 UK / 48.0 EU",
      "14.0 US / 13.0 UK / 49.5 EU",
      "15.0 US / 14.0 UK / 50.5 EU",
      "16.0 US / 15.0 UK / 52.0 EU"
    ]
  end

  def self.hair_colors
    [ "Auburn",
      "Bald",
      "Black",
      "Blonde",
      "Blonde - Ash",
      "Blonde - Dark",
      "Blonde - Light",
      "Blonde - Platinum",
      "Blonde - Strawberry",
      "Brown",
      "Brown - Dark",
      "Brown - Light",
      "Brown - Strawberry",
      "Grey",
      "Pink",
      "Red",
      "Salt & Pepper",
      "Shaved",
      "White"
    ]
  end

  def self.hair_lengths
    [ 'Ear Length',
      'Chin Length',
      'Neck Length',
      'Shoulder Length',
      'Collarbone Length',
      'Armpit Length',
      'Bra Strap Length',
      'Mid Back Length',
      'Waist Length',
      'Hip Length',
      'Thigh Length',
      'Knee Length',
      'Calf Length',
      'Ankle Length'
    ]
  end

  def self.eye_colors
    [ "Black",
      "Blue",
      "Blue-Green",
      "Blue-Grey",
      "Brown",
      "Green",
      "Green-Grey",
      "Grey",
      "Hazel"
    ]
  end

  def self.ethnicities
    [ "Asian",
      "Black / African descent",
      "East Indian",
      "Latino / Hispanic",
      "Middle Eastern",
      "Native American",
      "Pacific Islander",
      "White / Caucasian",
      "Multi-ethnic",
      "Mediterranean",
      "Central American",
      "Aboriginal Australian"
    ]
  end

  def self.skin_colors
    [ 'Light, Pale White',
      'White, Fair',
      'Medium, White to Light Brown',
      'Olive, Moderate Brown',
      'Brown, Dark Brown',
      'Very Dark Brown, Black'
    ]
  end

  def self.nudes
    ['Yes', 'No']
  end

  def self.tattoos
    [ 'None',
      'Few',
      'Many',
      'Body Suit'
    ]
  end

  def self.piercings
    [ 'None',
      'Few',
      'Many'
    ]
  end

  def self.experience
    [ 'Amateur',
      'Professional',
      'Veteran'
    ]
  end

  def self.compensation
    [ 'Hourly',
      'Per-Job',
      'Negotiable'
    ]
  end

  def self.countries
    [ "Afghanistan",
      "Albania",
      "Algeria",
      "American Samoa",
      "Andorra",
      "Angola",
      "Anguilla",
      "Antarctica",
      "Antigua and Barbuda",
      "Argentina",
      "Armenia",
      "Aruba",
      "Australia",
      "Austria",
      "Azerbaijan",
      "Bahamas",
      "Bahrain",
      "Bangladesh",
      "Barbados",
      "Belarus",
      "Belgium",
      "Belize",
      "Benin",
      "Bermuda",
      "Bhutan",
      "Bolivia",
      "Bosnia and Herzegovina",
      "Botswana",
      "Brazil",
      "Brunei",
      "Bulgaria",
      "Burkina Faso",
      "Burundi",
      "Cambodia",
      "Cameroon",
      "Canada",
      "Cape Verde",
      "Cayman Islands",
      "Central African Republic",
      "Chad",
      "Chile",
      "China",
      "Christmas Islands",
      "Cocos (Keeling) Islands",
      "Colombia",
      "Comoros",
      "Congo",
      "Cook Island",
      "Costa Rica",
      "Cote D'Ivoire",
      "Croatia",
      "Cuba",
      "Cyprus",
      "Czech Republic",
      "Denmark",
      "Djibouti",
      "Dominica",
      "Dominican Republic",
      "East Timor",
      "Ecuador",
      "Egypt",
      "El Salvador",
      "Equatorial Guinea",
      "Eritrea",
      "Estonia",
      "Ethiopia",
      "Falkland Islands",
      "Faroe Islands",
      "Federated States of Micronesia",
      "Fiji",
      "Finland",
      "France",
      "France, Metropolitan",
      "French Guiana",
      "French Polynesia",
      "French Southern Territories",
      "Gabon",
      "Gambia",
      "Georgia",
      "Germany",
      "Ghana",
      "Gibraltar",
      "Greece",
      "Greenland",
      "Grenada",
      "Guadeloupe",
      "Guam",
      "Guatemala",
      "Guinea",
      "Guinea-Bissau",
      "Guyana",
      "Haiti",
      "Heard and McDonald Islands",
      "Honduras",
      "Hong Kong",
      "Hungary",
      "Iceland",
      "India",
      "Indonesia",
      "Iran",
      "Iraq",
      "Ireland",
      "Israel",
      "Italy",
      "Jamaica",
      "Japan",
      "Jordan",
      "Kazakhstan",
      "Kenya",
      "Kiribati",
      "Korea, North",
      "Korea, South",
      "Kuwait",
      "Kyrgyzstan",
      "Laos",
      "Latvia",
      "Lebanon",
      "Lesotho",
      "Liberia",
      "Libya",
      "Liechtenstein",
      "Lithuania",
      "Luxembourg",
      "Macau",
      "Macedonia",
      "Madagascar",
      "Malawi",
      "Malaysia",
      "Maldives",
      "Mali",
      "Malta",
      "Marshall Islands",
      "Martinique",
      "Mauritania",
      "Mauritius",
      "Mayotte",
      "Mexico",
      "Moldova",
      "Monaco",
      "Mongolia",
      "Montserrat",
      "Morocco",
      "Mozambique",
      "Myanmar",
      "Namibia",
      "Nauru",
      "Nepal",
      "Netherlands",
      "Netherlands Antilles",
      "New Caledonia",
      "New Zealand",
      "Nicaragua",
      "Niger",
      "Nigeria",
      "Niue",
      "Norfolk Island",
      "Northern Mariana Islands",
      "Norway",
      "Oman",
      "Pakistan",
      "Palau",
      "Panama",
      "Papua New Guinea",
      "Paraguay",
      "Peru",
      "Philippines",
      "Pitcairn",
      "Poland",
      "Portugal",
      "Puerto Rico",
      "Qatar",
      "Reunion",
      "Romania",
      "Russia",
      "Rwanda",
      "Saint Kitts and Nevis",
      "Saint Lucia",
      "Saint Vincent and the Grenadines",
      "Samoa",
      "San Marino",
      "Sao Tome and Principe",
      "Saudi Arabia",
      "Senegal",
      "Seychelles",
      "Sierra Leone",
      "Singapore",
      "Slovakia",
      "Slovenia",
      "Solomon Islands",
      "Somalia",
      "South Africa",
      "South Georgia and South Sandwich Islands",
      "Spain",
      "Sri Lanka",
      "St. Helena",
      "St. Pierre and Miquelon",
      "Sudan",
      "Suriname",
      "Svalbard and Jan Mayen Islands",
      "Swaziland",
      "Sweden",
      "Switzerland",
      "Syria",
      "Taiwan",
      "Tajikistan",
      "Tanzania",
      "Thailand",
      "Togo",
      "Tokelau",
      "Tonga",
      "Trinidad and Tobago",
      "Tunisia",
      "Turkey",
      "Turkmenistan",
      "Turks and Caicos Islands",
      "Tuvalu",
      "Uganda",
      "Ukraine",
      "United Arab Emirates",
      "United Kingdom",
      "United States",
      "United States Minor Outlying Islands",
      "Uruguay",
      "Uzbekistan",
      "Vanuatu",
      "Vatican City",
      "Venezuela",
      "Vietnam",
      "Virgin Islands (British)",
      "Virgin Islands (United States)",
      "Wallis and Futuna Islands",
      "Western Sahara",
      "Yemen",
      "Yugoslavia",
      "Zaire",
      "Zambia",
      "Zimbabwe"
    ]
  end
end
