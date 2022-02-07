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

//////BARRICADES///////

/obj/structure/barricade/stone_h
	name = "stone wall"
	desc = "A wall of stone blocks."
	icon = 'icons/turf/wall.dmi'
	icon_state = "stone_brick"
	material = "stone"
	health = 300
	maxhealth = 300

/obj/structure/barricade/stone_v
	name = "stone wall"
	desc = "A wall of stone blocks."
	icon = 'icons/turf/wall.dmi'
	icon_state = "stone_brick2"
	material = "stone"
	health = 300
	maxhealth = 300

/obj/structure/barricade/stone_h/crenelated //thanks civ
	name = "crenelated stone wall"
	desc = "A wall of stone blocks."
	icon = 'icons/turf/wall.dmi'
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
	icon = 'icons/turf/wall.dmi'
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

/obj/structure/barricade/stone_v2/crenelated
	name = "crenelated stone wall"
	desc = "A wall of stone blocks."
	icon = 'icons/turf/wall.dmi'
	icon_state = "stone_brick_d"
	material = "stone"
	health = 300
	maxhealth = 300

/obj/structure/barricade/stone_h2/crenelated
	name = "crenelated stone wall"
	desc = "A wall of stone blocks."
	icon = 'icons/turf/wall.dmi'
	icon_state = "stone_brick_d2"
	material = "stone"
	health = 300
	maxhealth = 300

/obj/structure/barricade/stone_h/crenelated/New()
	..()
	icon_state = "stone_brick_c"
	name = "crenelated stone wall"
	health = 300
	maxhealth = 300
	color = null

/obj/structure/barricade/stone_v2/crenelated/New()
	..()
	icon_state = "stone_brick_d"
	name = "crenelated stone wall"
	health = 300
	maxhealth = 300
	color = null

/obj/structure/barricade/stone_h2/crenelated/New()
	..()
	icon_state = "stone_brick_d2"
	name = "crenelated stone wall"
	health = 300
	maxhealth = 300
	color = null

/obj/structure/barricade/stone_v2/crenelated/New()
	..()
	icon_state = "stone_brick_c2"
	name = "crenelated stone wall"
	health = 300
	maxhealth = 300
	color = null

///////STRUCTURES////////

/obj/item/device/flashlight/lantern/roman //its different I swear!
	name = "lantern"
	icon_state = "lantern"
	item_state = "lantern"
	desc = "A simple lantern."
	brightness_on = 6

/obj/item/device/flashlight/lantern/roman/anchored
	anchored = TRUE

/obj/structure/stairs/roman
	icon_state = "wood2_stairs"

/obj/structure/sink/well
	name = "well"
	icon_state = "well1"
	desc = "A well connected to underground aquifiers of water. Refreshing!"

/obj/machinery/cooker/fireplace //thanks civ, again
	name = "campfire"
	desc = "A campfire made with wood logs."
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "fireplace_on"
	layer = 2.9
	density = FALSE
	anchored = TRUE
	light_power = 0.75
	light_color = "#E38F46"

	cook_type = "grilled"
	cook_time = 100
	food_color = "#a34719"
	on_icon = "fireplace_on"
	off_icon = "fireplace3"
	can_burn_food = 1

/obj/machinery/cooker/fireplace/attack_hand(var/mob/living/H)
	if (icon_state == "fireplace")
		visible_message("<span class = 'notice'>[H] lights \the [name].</span>")
		icon_state = on_icon
		update_icon()
	else if (icon_state == "fireplace_on")
		visible_message("<span class = 'notice'>[H] puts off \the [name].</span>")
		set_light(0)
		icon_state = "fireplace"
		update_icon()
	H.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)


/obj/machinery/cooker/fireplace/Crossed(var/mob/living/M in range(1))
	if (icon_state == "fireplace_on" && ishuman(M))
		M.apply_damage(rand(2,4), BURN, "l_leg")
		M.apply_damage(rand(2,4), BURN, "r_leg")
		visible_message("<span class = 'warning'>[M] gets burnt by the [name]!</span>")

/obj/structure/grille/palisade
	name = "palisade"
	desc = "A wooden palisade."
	icon = 'icons/obj/structures.dmi'
	icon_state = "palisade"
	health = 32
	opacity = TRUE
	hitsound = 'sound/effects/wooddoorhit.ogg'
	flammable = TRUE


///////CONTAINERS///////

/obj/structure/closet/crate/rations //it says rations, but its really for anything
	name = "crate"
	icon_state = "wood_crate"
	icon_opened = "wood_crate_opened"
	icon_closed = "wood_crate"

/obj/structure/closet/crate/rations/vegetables
	name = "Roman Military Rations"

/obj/structure/closet/crate/rations/vegetables/WillContain()
	return list(/obj/item/reagent_containers/food/snacks/loadedbakedpotato = 4,
				/obj/item/reagent_containers/food/snacks/cheesewedge = 4,
				/obj/item/reagent_containers/food/snacks/beetsoup = 4,)

//////BARRIERS///////


/obj/structure/window/barrier
	icon = 'icons/obj/structures.dmi'
	name = "barrier"
	icon_state = "sandbag"
	layer = MOB_LAYER + 2 //just above mobs
	anchored = TRUE
	mouse_drop_zone = TRUE
	var/incomplete = FALSE
	maxhealth = 30
	health = 30

/obj/structure/window/barrier/sandbag
	name = "sandbag wall"
	icon_state = "sandbag"
	layer = MOB_LAYER + 2
	anchored = TRUE

/obj/structure/window/barrier/barrel //im lazy
	name = "barrel"
	icon = 'icons/obj/barrel.dmi'
	icon_state = "barrel_wood"
	layer = MOB_LAYER + 2
	anchored = FALSE

// /obj/structure/window/barrier/attack_hand(var/mob/user as mob)
// 	if (locate(src) in get_step(user, user.dir))
// 		if (WWinput(user, "Dismantle this [src]?", "Dismantle [src]", "Yes", list("Yes", "No")) == "Yes")
// 			visible_message("<span class='danger'>[user] starts dismantling the [src].</span>", "<span class='danger'>You start dismantling the [src].</span>")
// 			if (do_after(user, 200, src))
// 				visible_message("<span class='danger'>[user] finishes dismantling the [src].</span>", "<span class='danger'>You finish dismantling the [src].</span>")
// 				var/turf = get_turf(src)
// 				// if (!istype(src, /obj/structure/window/barrier/incomplete))
// 				// 	for (var/v in TRUE to rand(4,6))
// 				// 		new /obj/item/weapon/barrier(turf)
// 				// else
// 				// 	var/obj/structure/window/barrier/incomplete/I = src
// 				// 	for (var/v in TRUE to (1 + pick(I.progress-1, I.progress)))
// 				// 		new /obj/item/weapon/barrier(turf)
// 				qdel(src)

/obj/structure/window/barrier/ex_act(severity)
	switch(severity)
		if (1.0)
			qdel(src)
			return
		if (2.0)
			qdel(src)
			return
		else
			if (prob(50))
				return ex_act(2.0)
	return

/obj/structure/window/barrier/New(location, var/mob/creator)
	loc = location

	if (creator && ismob(creator))
		dir = creator.dir
	else
		var/ndir = creator
		dir = ndir

	set_dir(dir)

	switch (dir)
		if (NORTH)
			layer = MOB_LAYER - 0.01
			pixel_y = FALSE
		if (SOUTH)
			layer = MOB_LAYER + 2
			pixel_y = FALSE
		if (EAST)
			layer = MOB_LAYER - 0.05
			pixel_x = FALSE
		if (WEST)
			layer = MOB_LAYER - 0.05
			pixel_x = FALSE

//////FLOOR/////////

/decl/flooring/slate
	name = "slate floor"
	desc = "Rough slate flooring."
	icon = 'icons/turf/floors.dmi'
	icon_base = "slatefloor"
	has_damage_range = 6
	damage_temperature = T0C+200
	descriptor = "tiles"
	//build_type = /obj/item/stack/tile/wood
	flags = TURF_CAN_BREAK | TURF_REMOVE_CROWBAR

/decl/flooring/stone
	name = "slate floor"
	desc = "Rough stone flooring."
	icon = 'icons/turf/floors.dmi'
	icon_base = "stone_bricks"
	has_damage_range = 6
	damage_temperature = T0C+200
	descriptor = "tiles"
	//build_type = /obj/item/stack/tile/wood
	flags = TURF_CAN_BREAK | TURF_REMOVE_CROWBAR

/turf/simulated/floor/slate
	name = "slate floor"
	icon = 'icons/turf/floors.dmi'
	icon_state = "slatefloor"
	initial_flooring = /decl/flooring/slate

/turf/unsimulated/floor/slate/New()
	..()
	temperature = T20C
	dir = pick(GLOB.alldirs)
	if(!(locate(/obj/effect/lighting_dummy/daylight) in src))
		new /obj/effect/lighting_dummy/daylight(src)
	spawn(1)
		overlays.Cut()
		vis_contents.Cut()
		update_icon()

/turf/simulated/floor/stone
	name = "stone floor"
	icon = 'icons/turf/floors.dmi'
	icon_state = "stone_bricks"
	initial_flooring = /decl/flooring/stone

/turf/unsimulated/floor/stone/New()
	..()
	temperature = T20C
	dir = pick(GLOB.alldirs)
	if(!(locate(/obj/effect/lighting_dummy/daylight) in src))
		new /obj/effect/lighting_dummy/daylight(src)
	spawn(1)
		overlays.Cut()
		vis_contents.Cut()
		update_icon()

//////DRINKS///////

/obj/item/reagent_containers/food/drinks/canteen/amphora
	name = "amphora"
	desc = "A clay amphora."
	icon_state = "amphora"
	icon = 'icons/obj/drinks.dmi'
	volume = 150

/obj/item/reagent_containers/food/drinks/canteen/amphora/New()
	. = ..()
	reagents.add_reagent(/datum/reagent/water, 50)
