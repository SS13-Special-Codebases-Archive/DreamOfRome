#define REQUIRED_CAPTURED_ZONES -1 //You gotta hold all four trenches and mid in order to enter the enemies zone.
#define REQUIRED_TRENCH_ZONES -1 //Hold

GLOBAL_LIST_EMPTY(barbarian_captured_zones) //= list()
GLOBAL_LIST_EMPTY(roman_captured_zones) // = list()

GLOBAL_LIST_EMPTY(mortar_areas) // = list()


/area/constructionsite
	name = "\improper Construction Site"
	icon_state = "storage"

/area/maintenance/fsmaint2
	name = "\improper Fore Starboard Maintenance - 2"
	icon_state = "fsmaint"

/area/medical/surgery
	name = "\improper Operating Theatre"
	icon_state = "surgery"

/area/adrianople
	//music = 'sound/music/trench_bgm.ogg' <-- find music
	dynamic_lighting = TRUE
	requires_power = FALSE

/area/adrianople/battlefield
	name = "\improper Battlefield"
	var/captured = null
	turf_initializer = null
	var/can_pre_enter = FALSE
	//forced_ambience = list('sound/effects/siegestorm.ogg')

/area/adrianople/battlefield/capture_point
	name = "\improper Capture Point"
	icon_state = "storage"
	turf_initializer = null
	var/roman_capture_points = 0
	var/barbarian_capture_points = 0
	var/list/barbarians = list()
	var/list/romans = list()

/area/adrianople/battlefield/capture_point/New()
	..()
	START_PROCESSING(SSprocessing, src)

/area/adrianople/battlefield/capture_point/Entered(atom/A)
	. = ..()
	if(ishuman(A))
		var/mob/living/carbon/human/H = A
		if(H.warfare_faction != captured)
			to_chat(H, "Now capturing [src]!")
		else
			to_chat(H, "Now defending [src]!")

/area/adrianople/battlefield/capture_point/Process()
	for(var/mob/living/carbon/human/H in src)
		if(!istype(H))
			continue

		if(H.warfare_faction == BARBARIANS)
			if(H.stat == CONSCIOUS)//If they're dead or unconcious then don't add them.
				barbarians |= H
			else if(H.stat > 0)//If they die or pass out remove them.
				barbarians -= H
			else if(!H.client)//No client, then remove them.
				barbarians -= H

		//Same for red team.
		else if(H.warfare_faction == ROMANS )
			if(H.stat == CONSCIOUS)
				romans |= H
			else if(H.stat > 0)
				romans -= H
			else if(!H.client)
				romans -= H

	if(barbarians.len > romans.len)//More of the blue team than red team is in the area.
		if(barbarian_capture_points < config.trench_capture_points)
			barbarian_capture_points++//Increase the points until it's captured.
		if(roman_capture_points > 0)
			roman_capture_points--
	else if(barbarians.len < romans.len)//Opposite here.
		if(roman_capture_points < config.trench_capture_points)
			roman_capture_points++
		if(barbarian_capture_points > 0)
			barbarian_capture_points--

	if(barbarian_capture_points == (config.trench_capture_points/2) && (captured != BARBARIANS))//Announce when we're halfway done.
		to_world("<big>[uppertext("[BARBARIANS] are HALF done capturing the [src]")]</big>")

	if(roman_capture_points == (config.trench_capture_points/2) && (captured != ROMANS))
		to_world("<big>[uppertext("[ROMANS] are HALF done capturing the [src]")]</big>")

	if(barbarian_capture_points >= config.trench_capture_points && (captured != BARBARIANS))//If we've already captured it we don't want to capture it again.
		to_world("<big>[uppertext("[BARBARIANS] HAVE CAPTURED THE [src]")]!</big>")
		captured = BARBARIANS
		GLOB.barbarian_captured_zones |= src//Add it to our list.
		GLOB.roman_captured_zones -= src//Remove it from theirs.
		barbarian_capture_points = 0//Reset it back to 0.
		roman_capture_points = 0//For both sides.
		sound_to(world, 'sound/effects/capture.ogg')

	else if(roman_capture_points >= config.trench_capture_points && (captured != ROMANS))
		to_world("<big>[uppertext("[ROMANS] HAVE CAPTURED THE [src]")]!</big>")
		captured = ROMANS
		GLOB.roman_captured_zones |= src
		GLOB.barbarian_captured_zones -= src
		barbarian_capture_points = 0
		roman_capture_points = 0
		sound_to(world, 'sound/effects/capture.ogg')

/area/adrianople/battlefield/capture_point/Exit(mob/living/L)
	. = ..()
	if(ishuman(L))
		if(L in barbarians)
			barbarians -= L
		else if(L in romans)
			romans -= L

/area/adrianople/battlefield/capture_point/romans
	icon_state = "red"
	captured = ROMANS

	New()//They start out having these by default.
		..()
		GLOB.roman_captured_zones |= src

/area/adrianople/battlefield/capture_point/romans/Enter(atom/movable/AM)
	if(ishuman(AM))
		var/mob/living/carbon/human/H = AM
		if(H.warfare_faction == BARBARIANS && (GLOB.barbarian_captured_zones.len < REQUIRED_TRENCH_ZONES))
			to_chat(H, "<big>WE DO NOT CONTROL THE MAIN BATTLEFIELD!</big>")
			return FALSE
	return TRUE

/area/adrianople/battlefield/capture_point/barbarians
	icon_state = "blue"
	captured = BARBARIANS

	New()
		..()
		GLOB.barbarian_captured_zones |= src

/area/adrianople/battlefield/capture_point/barbarians/Enter(atom/movable/AM)
	if(ishuman(AM))
		var/mob/living/carbon/human/H = AM
		if(H.warfare_faction == ROMANS && (GLOB.roman_captured_zones.len < REQUIRED_TRENCH_ZONES))
			to_chat(H, "<big>WE DO NOT CONTROL THE MAIN BATTLEFIELD!</big>")
			return FALSE
	return TRUE

/area/adrianople/farawayhome
	name = "\improper Far Away"
	icon_state = "start"

/area/adrianople/farawayhome/Enter(atom/movable/mover as mob|obj, atom/forget as mob|obj|turf|area)
	if(ishuman(mover))
		var/mob/living/carbon/human/H = mover
		to_chat(H, "<big>I cannot betray my people! I must go back!</big>")
	return FALSE

//so that this shit actually compiles
/area/warfare/battlefield/no_mans_land

/area/warfare/battlefield/capture_point/mid