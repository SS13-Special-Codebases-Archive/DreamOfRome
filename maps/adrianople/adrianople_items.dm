//////CLOTHING//////

/obj/item/clothing/suit/armor/legion
	name = "Lorica Hamata"
	desc = "Standard-issue chain-mail armour of the Roman military."
	icon_state = "legionarmour"
	warfare_team = ROMANS
	slot_flags = SLOT_OCLOTHING
	armor = list(melee = 40, bullet = 50, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0) //Higher quality than barbarian
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

//DUX
/obj/item/clothing/suit/armor/legion/dux
	name = "Dux's Lorica Squamata"
	desc = "Standard-issue scale armour for Roman military members of the ranking of Dux."
	icon_state = "duxarmour"
	warfare_team = ROMANS
	armor = list(melee = 50, bullet = 50, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0) //For duxes only
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

//MAGISTER MILITUM
/obj/item/clothing/suit/armor/legion/militum
	name = "Magister Militum's Lorica Squamata"
	desc = "Highest-quality version of the Lorica Squamata destined for the highest ranking Roman military officer."
	icon_state = "militumarmour"
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
	icon_state = "romaninfantry"

//Shoe/under clothing, leather

/obj/item/clothing/shoes/prac_boot/leather //dont use this
	name = "Leather Boots & Pants"
	desc = "Your own breeches to soil, and boots to ruin."
	icon_state = "leatherboots"

//ROMAN-LEGION UNIFORM

/obj/item/clothing/under/roman
	name = "Roman Tunic"
	desc = "Standard military tunic for the Roman military."
	slot_flags = SLOT_ICLOTHING
	icon_state = "tunicroman2"
	worn_state = "tunicroman2"
	item_state = "tunicroman2"

/obj/item/clothing/under/roman/officer
	name = "Officer's Tunic"
	desc = "A very nice shade of blue, the colour of the Danube."
	icon_state = "tunicroman1"
	worn_state = "tunicroman1"
	item_state = "tunicroman1"

//BARBARIAN

/obj/item/clothing/suit/armor/legion/chief //yes I know its part of legion, shush
	name = "Gothic Chief Piece"
	desc = "The cape-draped armour of a Gothic barbarian chief."
	icon_state = "barbarianchiefarmour"
	warfare_team = BARBARIANS
	armor = list(melee = 50, bullet = 50, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0) //For duxes only
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/head/helmet/legion/barbarian //why you may ask? cause im lazy thats why, fix it later idk
	name = "Gothic Barbarii Helmet"
	desc = "A Roman imitation helmet, nonetheless protective."
	warfare_team = ROMANS
	armor = list(melee = 55, bullet = 55, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0) //helps you out
	icon_state = "germaninfantry"



//////WEAPONS//////

