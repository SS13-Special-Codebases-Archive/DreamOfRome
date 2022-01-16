/obj/vehicle/horse
	name = "horse"
	desc = "An untamed horse."
	icon = 'icons/obj/horse.dmi' //find sprites goddamnit
	icon_state = ""
	dir = SOUTH

	load_item_visible = 1
	buckle_pixel_shift = "x=0;y=5"
	health = 100
	maxhealth = 100
	powered = 0

	locked = 0
	fire_dam_coeff = 0.6
	brute_dam_coeff = 0.5
	var/protection_percent = 60

	var/land_speed = 10 //if 0 it can't go on turf
	var/space_speed = 2
	var/bike_icon = "" //change

	var/datum/effect/effect/system/trail/trail //might wanna change this
	var/obj/item/engine/engine = null
	var/engine_type = FALSE
	var/prefilled = 0

/obj/vehicle/horse/New() //uh yea
	..()
	update_icon()

/obj/vehicle/horse/load(var/atom/movable/C)
	var/mob/living/M = C
	if(!istype(C)) return 0
	if(M.buckled || M.restrained() || !Adjacent(M) || !M.Adjacent(src))
		return 0
	return ..(M)

/obj/vehicle/horse/MouseDrop_T(var/atom/movable/C, mob/user as mob)
	if(!load(C))
		to_chat(user, "<span class='warning'> You were unable to load \the [C] onto \the [src].</span>")
		return

/obj/vehicle/horse/attack_hand(var/mob/user as mob)
	if(user == load)
		unload(load)
		to_chat(user, "You unseat yourself from \the [src]")

/obj/vehicle/horse/relaymove(mob/user, direction)
	if(user != load || !on || user.incapacitated())
		return
	return Move(get_step(src, direction))

/obj/vehicle/horse/Move(var/turf/destination) //lots of redundant garbage
	//these things like space, not turf. Dragging shouldn't weigh you down.
	if(!pulledby)
		move_delay = land_speed
	return ..()

/obj/vehicle/horse/bullet_act(var/obj/item/projectile/Proj)
	if(buckled_mob && prob(protection_percent))
		buckled_mob.bullet_act(Proj)
		return
	..()

/obj/vehicle/horse/update_icon()
	overlays.Cut()

	if(on)
		icon_state = "[bike_icon]_on"
	else
		icon_state = "[bike_icon]_off"
	overlays += image('icons/obj/bike.dmi', "[icon_state]_overlay", BASE_MOB_LAYER + 1)
	..()

/obj/vehicle/horse/Destroy()
	qdel(trail)
	..()

//ROMAN CALVALRY