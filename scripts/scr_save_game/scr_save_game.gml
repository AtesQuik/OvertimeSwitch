function scr_save_game() {
	global.amountofsaves += 1
	script_execute(scr_progress_save)
	script_execute(scr_save_universal)
	script_execute(scr_save_hired_and_killed)
	script_execute(scr_save_story)
	game_save(global.savename)



}
