function scr_random_encounter_variables() {
	global.randomsteps = irandom_range(250, 330)
	global.randomchance = 100
	global.randomencounter = 0
	global.bonussteps = 0
	script_execute(scr_flee_variables)



}
