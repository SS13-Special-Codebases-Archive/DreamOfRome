
/datum/language/warfare
	name = "warfare language"
	desc = "Nothing. Just code stuff"
	speech_verb = "says"
	whisper_verb = "whispers"
	flags = RESTRICTED

/datum/language/warfare/get_spoken_verb(var/msg_end)
	switch(msg_end)
		if("!")
			return pick("exclaims", "shouts", "yells") //TODO: make the basic proc handle lists of verbs.
		if("?")
			return ask_verb
	return speech_verb

/datum/language/warfare/red
	name = LANGUAGE_RED
	desc = "This is the languaged used by the Red Team."
	colour = "red_team"
	key = "r"
	syllables = list("zhena", "reb", "kot", "tvoy", "vodka", "blyad", "lenin", "ponimat", "zhit", "kley", "sto", "yat", "si", "det", "re", "be", "nok", "chto", "tovarish", "kak", "govor", "navernoe", "da", "net", "horosho", "pochemu", "privet", "ebat", "krovat", "stol", "za", "ryad", "ka", "voyna", "dumat", "patroni", "fashisti", "zdorovie", "day", "dengi", "nemci", "chehi", "odin", "dva", "soyuz", "holod", "granata", "ne", "re", "ru", "rukzak")

/datum/language/warfare/blue
	name = LANGUAGE_BLUE
	desc = "This is the languaged used by the Blue Team."
	colour = "blue_team"
	key = "z"
	syllables = list("byt", "ten", "ze", "ktery", "pan", "hlava", "zem", "lide", "doba", "dobry", "cely", "tvrdy", "roz", "hodny", "nezlomny", "staly", "scvrnkly", "ener", "gicky", "nezmen", "itelne", "hi", "ved", "dur", "pec", "dat", "bet", "ten", "on", "na", "he", "ktere", "pen", "hivot", "clo", "vek", "pre", "zeme", "lidu", "dob", "hlav", "mht", "moci", "muse", "vedet", "chtht", "jht", "rhci", "cele", "hive", "trvanlive", "hou", "hev", "nate", "dobre")

/datum/language/warfare/latin
	name = LANGUAGE_LATIN
	desc = "This is the languaged used by the Romans."
	colour = "red_team"
	key = "z"
	syllables = list("ant", "ati", "bus", "con", "con", "com", "era", "ere", "est", "iam", "ibu", "ili", "iss", "itu", "ita", "ium", "ius", "per", "oru", "pro", "qua", "que", "quo", "rum", "tat", "ter", "tum", "ten", "unt", "tus", "se", "ta", "vi", "roma", "mediolanum", "delenda", "invicta", "bono", "deus", "domini", "gladus", "frater")

/datum/language/warfare/german
	name = LANGUAGE_GERMAN
	desc = "This is the languaged used by the Germanic tribes."
	colour = "blue_team"
	key = "z"
	syllables = list("ach", "and", "nen", "de", "mit", "nde", "nic", "nge", "sei", "sen", "ste", "ter", "mit", "ich", "ein", "die", "gen", "ine", "ach", "ers", "ren", "hi", "ire", "dur", "pec", "dat", "bet", "ten", "on", "na", "he", "tere", "pen", "hivot", "clo", "vek", "pre", "zeme", "lidu", "dob", "mht", "moci", "muse","cele", "hive", "hou", "hev", "nate", "dobre")