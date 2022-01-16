
/datum/map/adrianople
	name = "Adrianople"
	full_name = "Battle of Adrianople (378 AD)"
	path = "adrianople"
	station_name  = "Adrianople"
	station_short = "Adrianople"
	dock_name     = "Adrianople"
	boss_name     = "Eastern Roman Empire"
	boss_short    = "ERE"
	company_name  = "Province of Thrace"
	company_short = "Thrace"
	system_name = "Europe"

	lobby_icon = 'maps/adrianople/fullscreen.dmi'
	lobby_screens = list("lobby1")

	station_levels = list(1,2)
	contact_levels = list(1)
	player_levels = list(1,2)

	allowed_spawns = list("Arrivals Shuttle")
	base_turf_by_z = list("1" = /turf/simulated/floor/dirty, "2" = /turf/simulated/floor/dirty, "3" = /turf/simulated/floor/dirty)
	shuttle_docked_message = "The shuttle has docked."
	shuttle_leaving_dock = "The shuttle has departed from home dock."
	shuttle_called_message = "A scheduled transfer shuttle has been sent."
	shuttle_recall_message = "The shuttle has been recalled"
	emergency_shuttle_docked_message = "The emergency escape shuttle has docked."
	emergency_shuttle_leaving_dock = "The emergency escape shuttle has departed from %dock_name%."
	emergency_shuttle_called_message = "An emergency escape shuttle has been sent."
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled"
	map_lore = "In 378 AD, the great Roman Empire and the vast rebel Gothic hordes meet at the plains outside of Hadrianopolis after two years of devastation south of the Danube. The troops have grown restless, itching for a fight."



//Overriding event containers to remove random events.
/datum/event_container/mundane
	available_events = list()

/datum/event_container/moderate
	available_events = list()

/datum/event_container/major
	available_events = list()
