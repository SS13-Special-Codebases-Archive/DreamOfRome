/datum/job/assistant
	total_positions = 0

/datum/map/adrianople
	allowed_jobs = list(
	/datum/job/assistant,
	/datum/job/soldier/legion
	)

/mob/living/carbon/human/proc/warfare_language_shit(var/language_name)
	if(aspect_chosen(/datum/aspect/one_word))
		return
	if(aspect_chosen(/datum/aspect/trenchmas)) //leftover warfare stuff, not touching it
		return
	remove_language(LANGUAGE_GALCOM)
	var/datum/language/L = null
	add_language(language_name)
	L = all_languages[language_name]

	if(L)
		default_language = L

/datum/job/assistant
	title = "REDACTED"
	total_positions = 0
	spawn_positions = 0