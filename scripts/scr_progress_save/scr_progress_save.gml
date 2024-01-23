function scr_progress_save() {
	if file_exists("Progress.sav")
	    file_delete("Progress.sav")
	switch_saveload()
	ini_open("Progress.sav")
	ini_write_real("Saved", "playerlevel", global.playerlevel)
	ini_write_real("Saved", "playminute", global.playminute)
	ini_write_real("Saved", "playsecond", global.playsecond)
	ini_write_string("Saved", "savedroom", global.savedroom)
	ini_write_string("Saved", "savedplayer", global.savedplayer)
	ini_write_real("Saved", "savedlevel", global.savedlevel)
	ini_write_real("Saved", "amountofsaves", global.amountofsaves)
	ini_write_real("Saved", "savedminute", global.savedminute)
	ini_write_real("Saved", "savedsecond", global.savedsecond)
	ini_write_real("Behaviour", "enemiesencountered", global.enemiesencountered)
	ini_write_real("Behaviour", "enemieskilled", global.enemieskilled)
	ini_write_real("Behaviour", "enemiesspared", global.enemiesspared)
	switch_saveloadend()



}
