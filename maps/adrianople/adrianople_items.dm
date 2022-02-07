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

/obj/item/melee/gladius
	name = "gladius"
	desc = "Standard military issue side-arm of the Roman military."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "gladius"
	item_state = "gladius"
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_S_STORE
	force = 20
	block_chance = 20
	sharp = TRUE
	edge = TRUE
	hitsound = "slash_sound"
	drop_sound = 'sound/items/handle/axe_drop.ogg'
	equipsound = 'sound/items/equip/axe_equip.ogg'
	grab_sound = 'sound/items/handle/axe_grab.ogg'
	grab_sound_is_loud = TRUE

/obj/item/melee/pilum
	name = "pilum"
	desc = "Standard military issue weapon of the Roman military."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "pilum"
	item_state = "pilum"
	slot_flags = SLOT_BACK
	force = 30
	block_chance = 0
	sharp = TRUE
	edge = FALSE
	hitsound = "slash_sound"
	drop_sound = 'sound/items/handle/axe_drop.ogg' //might wanna change this
	equipsound = 'sound/items/equip/axe_equip.ogg'
	grab_sound = 'sound/items/handle/axe_grab.ogg'
	grab_sound_is_loud = TRUE

//BARRICADES

/obj/structure/barricade/stone_h/crenelated //thanks civ
	name = "crenelated stone wall"
	desc = "A wall of stone blocks."
	icon = 'icons/turf/walls.dmi'
	icon_state = "stone_brick_c"
	material = "stone"
	health = 300
	maxhealth = 300

// /obj/structure/barricade/stone_h/crenelated/attackby(obj/item/weapon/W as obj, mob/user as mob)
// 	if (istype(W, /obj/item/weapon/siegeladder))
// 		visible_message(
// 			"<span class='danger'>\The [user] starts deploying \the [W.name].</span>",
// 			"<span class='danger'>You start deploying \the [W.name].</span>")
// 		if (do_after(user, 80, src))
// 			visible_message(
// 				"<span class='danger'>\The [user] has deployed \the [W.name]!</span>",
// 				"<span class='danger'>You have deployed \the [W.name]!</span>")
// 			qdel(W)
// 			var/obj/item/weapon/siegeladder/ANCH = new/obj/item/weapon/siegeladder(src.loc)
// 			ANCH.anchored = TRUE
// 			src.climbable = TRUE
// 			ANCH.deployed = TRUE
// 			ANCH.icon_state = ANCH.depicon
// 			ANCH.dir = src.dir
// 			return
// 	if (istype(W,/obj/item/weapon) || !istype(W,/obj/item/weapon/wrench) || !istype(W,/obj/item/weapon/hammer)) //No weapons can harm me! If not weapon and not a wrench.
// 		user << "You hit the wall uselessly!"//sucker
// 		return
// 	else
// 		..()

/obj/structure/barricade/stone_v/crenelated
	name = "crenelated stone wall"
	desc = "A wall of stone blocks."
	icon = 'icons/turf/walls.dmi'
	icon_state = "stone_brick_c2"
	material = "stone"
	health = 300
	maxhealth = 300

// /obj/structure/barricade/stone_v/crenelated/attackby(obj/item/weapon/W as obj, mob/user as mob)
// 	if (istype(W, /obj/item/weapon/siegeladder))
// 		visible_message(
// 			"<span class='danger'>\The [user] starts deploying \the [W.name].</span>",
// 			"<span class='danger'>You start deploying \the [W.name].</span>")
// 		if (do_after(user, 80, src))
// 			visible_message(
// 				"<span class='danger'>\The [user] has deployed \the [W.name]!</span>",
// 				"<span class='danger'>You have deployed \the [W.name]!</span>")
// 			qdel(W)
// 			var/obj/item/weapon/siegeladder/ANCH = new/obj/item/weapon/siegeladder(src.loc)
// 			ANCH.anchored = TRUE
// 			src.climbable = TRUE
// 			ANCH.deployed = TRUE
// 			ANCH.icon_state = ANCH.depicon
// 			ANCH.dir = src.dir
// 			return
// 	if (istype(W,/obj/item/weapon) || !istype(W,/obj/item/weapon/wrench) || !istype(W,/obj/item/weapon/hammer)) //No weapons can harm me! If not weapon and not a wrench.
// 		user << "You hit the wall uselessly!"//sucker
// 		return
// 	else
// 		..()

/obj/structure/barricade/stone_h/crenelated/New()
	..()
	icon_state = "stone_brick_c"
	name = "crenelated stone wall"
	health = 300
	maxhealth = 300
	color = null

/obj/structure/barricade/stone_v/crenelated/New()
	..()
	icon_state = "stone_brick_c2"
	name = "crenelated stone wall"
	health = 300
	maxhealth = 300
	color = null
	