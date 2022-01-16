/turf/unsimulated/floor/river //ported from escal
	name = "river"
	icon = 'icons/turf/dirt.dmi'
	icon_state = "water"
	movement_delay = 10
	layer = MOB_LAYER+0.2

/turf/unsimulated/floor/river/New()
	..()
	temperature = T20C
	dir = pick(GLOB.alldirs)
	if(!(locate(/obj/effect/lighting_dummy/daylight) in src))
		new /obj/effect/lighting_dummy/daylight(src)
	spawn(1)
		overlays.Cut()
		vis_contents.Cut()
		update_icon()
//	..() // To get the edges.
/*
/turf/unsimulated/floor/river/update_icon()
	var/image/overmob_overlay
	overmob_overlay = image('icons/turf/flooring/water.dmi',src,"riverwater", "layer" = MOB_LAYER+0.1)
	overlays += overmob_overlay
*/

/turf/unsimulated/floor/river/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(istype(mover, /mob/))
		return 0
	else
		return !density

/turf/unsimulated/floor/river/deep
	name = "deep river"
	icon_state = "waterdeep"

/turf/unsimulated/floor/river/Cross(var/atom/A)//People who are on fire go out.
	if(isliving(A))
		var/mob/living/L = A
		L.ExtinguishMob()

/turf/unsimulated/floor/river/attackby(obj/item/O, mob/user)
	if(istype(O, /obj/item/reagent_containers))
		var/obj/item/reagent_containers/RG = O
		if (istype(RG) && RG.is_open_container())
			RG.reagents.add_reagent(/datum/reagent/water, min(RG.volume - RG.reagents.total_volume, RG.amount_per_transfer_from_this))
			user.visible_message("<span class='notice'>[user] fills \the [RG] using \the [src].</span>","<span class='notice'>You fill \the [RG] using \the [src].</span>")
			return 1

/turf/unsimulated/floor/river/deep/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(istype(mover, /mob/))
		return 0
	else
		return !density