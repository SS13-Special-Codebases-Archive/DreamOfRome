var/siegewall = FALSE

/datum/game_mode/barbarianinvasion
	name = "Barbarian Invasion"
	round_description = "The Barbarii have arrived at the frontiers of Rome..."
	extended_round_description = "The unholy inhabitants of beyond the frontiers have arrived to end the glory of Rome."
	config_tag = "barbarianinvasion"
	required_players = 0
	auto_recall_shuttle = TRUE //If the shuttle is even somehow called.

/datum/game_mode/barbarianinvasion/declare_completion()
	SSwarfare.declare_completion()

/datum/game_mode/barbarianinvasion/post_setup()
	..()
	start_siege_countdown()

/datum/game_mode/barbarianinvasion/check_finished()
	if(SSwarfare.check_completion())
		return TRUE
	..()

/datum/game_mode/barbarianinvasion/declare_completion()

/proc/isbarbarianinvasion() //CHECK INSTANCES OF THESE
    return (istype(ticker.mode, /datum/game_mode/barbarianinvasion) || master_mode=="barbarianinvasion")

/datum/game_mode/barbarianinvasion/proc/start_siege_countdown()
	spawn(8 MINUTES)
		open_siegewall()
		spawn(32 MINUTES)
			SSwarfare.end_warfare(BARBARIANS)

/datum/game_mode/barbarianinvasion/proc/open_siegewall()
	siegewall = TRUE
	to_world("<big>Rome is threatened by a barbarian invasion! May god decide the fate of the world!</big>") //CHANGE
	//sound_to(world, 'sound/effects/redcharge.ogg') <--CHECK THIS

/mob/living/carbon/human/proc/handle_invasion_death()
	if(!isbarbarianinvasion())
		return
	if(is_npc)
		return
	if(src in SSwarfare.barbarians.team)//If in the team.
		SSwarfare.barbarians.left--//Take out a life.
		SSwarfare.barbarians.team -= src//Remove them from the team.
	if(src in SSwarfare.romans.team)//Same here.
		SSwarfare.romans.left--
		SSwarfare.romans.team -= src

	if(client)
		client.warfare_deaths++

	// as far as i know there are no immediate jobtype vars in mind or human, so here we go
	//if(SSjobs?.GetJobByTitle(job)?.type == /datum/job/soldier/red_soldier/captain) [FIX LATER WHEN JOB ADDED]
	//	for(var/X in SSwarfare.romans.team)
	//		var/mob/living/carbon/human/H = X
	//		H.add_event("captain death", /datum/happiness_event/captain_death)
	//if(SSjobs?.GetJobByTitle(job)?.type == /datum/job/soldier/blue_soldier/captain) //REPLACE WHEN JOBS DONE
	//	for(var/X in SSwarfare.barbarians.team) //REPLACE WHEN JOBS DONE
	//		var/mob/living/carbon/human/H = X
	//		H.add_event("captain death", /datum/happiness_event/captain_death)
	if(SSjobs?.GetJobByTitle(job)?.open_when_dead)//When the person dies who has this job, free this role again.
		SSjobs.allow_one_more(job)

	if(!GLOB.first_death)
		GLOB.first_death = real_name
	if(!GLOB.first_death_happened)
		GLOB.first_death_happened = TRUE
	if(!GLOB.final_words)
		GLOB.final_words = last_words

/mob/living/carbon/human/proc/handle_invasion_life()
	if(!isbarbarianinvasion())
		return

	if(tracking)
		tracking.update()

///datum/game_mode/barbarianinvasion/proc/close_siegewall() //this is un-needed
//	siegewall = FALSE
//	to_world("<big>The Barbarii charge has slowed down!</big>")
//	spawn(5 MINUTES)
//		open_siegewall()
