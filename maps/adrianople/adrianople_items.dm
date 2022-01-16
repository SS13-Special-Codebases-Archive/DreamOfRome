//ROMAN-LEGION ARMOUR

/obj/item/clothing/suit/armor/legion
	name = "Lorica Hamata"
	desc = "Standard-issue chain-mail armour of the Roman military."
	icon_state = "legion_armour"
	warfare_team = ROMANS
	armor = list(melee = 40, bullet = 50, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0) //Higher quality than barbarian
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

//DUX
/obj/item/clothing/suit/armor/legion/dux
	name = "Dux's Lorica Squamata"
	desc = "Standard-issue scale armour for Roman military members of the ranking of Dux."
	icon_state = "dux_armour"
	warfare_team = ROMANS
	armor = list(melee = 50, bullet = 50, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0) //For duxes only
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

//MAGISTER MILITUM
/obj/item/clothing/suit/armor/legion/militum
	name = "Magister Militum's Lorica Squamata"
	desc = "Highest-quality version of the Lorica Squamata destined for the highest ranking Roman military officer."
	icon_state = "militum_armour"
	warfare_team = ROMANS
	armor = list(melee = 55, bullet = 50, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0) //Best armour
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

//ROMAN-LEGION HELMETS

/obj/item/clothing/head/helmet/legion
	name = "Roman Intercisa Helmet"
	desc = "The Late-Roman Army standard-issue helmet for Legionnaires."
	warfare_team = ROMANS
	armor = list(melee = 60, bullet = 60, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0) //helps you out
	icon_state = "roman_helmet"

//ROMAN-LEGION SHOES

/obj/item/clothing/shoes/roman
	name = "Roman Military Boots"
	desc = "Military sandals, huh..."
	icon_state = "roman"
	item_state = "roman"

//ROMAN-LEGION UNIFORM

/obj/item/clothing/under/roman
	name = "Roman Tunic"
	desc = "Standard military tunic for the Roman military."
	icon_state = "roman"
	worn_state = "roman"
	item_state = "roman"

/obj/item/clothing/under/roman/officer
	name = "Roman Officer's Tunic"
	desc = "Tunic worn by officers of the Roman military."
	icon_state = "roman_officer"
	worn_state = "roman_officer"
	item_state = "roman_officer"