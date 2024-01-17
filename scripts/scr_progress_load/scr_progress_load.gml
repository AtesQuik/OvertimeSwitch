function scr_progress_load() {
	if file_exists("Progress.sav")
	{
	    ini_open("Progress.sav")
		switch_saveload()
	    global.playerlevel = ini_read_real("Saved", "playerlevel", 1)
	    global.playminute = ini_read_real("Saved", "playminute", 0)
	    global.playsecond = ini_read_real("Saved", "playsecond", 0)
	    global.savedroom = ini_read_string("Saved", "savedroom", "")
	    global.savedplayer = ini_read_string("Saved", "savedplayer", "")
	    global.savedlevel = ini_read_real("Saved", "savedlevel", 1)
	    global.amountofsaves = ini_read_real("Saved", "amountofsaves", 0)
	    global.savedminute = ini_read_real("Saved", "savedminute", 0)
	    global.savedsecond = ini_read_real("Saved", "savedsecond", 0)
	    global.enemiesencountered = ini_read_real("Behaviour", "enemiesencountered", 0)
	    global.enemieskilled = ini_read_real("Behaviour", "enemieskilled", 0)
	    global.enemiesspared = ini_read_real("Behaviour", "enemiesspared", 0)
	    switch_saveloadend()
	}
	else
	{
	    global.playerlevel = 1
	    global.playminute = 0
	    global.playsecond = 0
	    global.savedroom = ""
	    global.savedplayer = ""
	    global.savedlevel = 1
	    global.amountofsaves = 0
	    global.savedminute = 0
	    global.savedsecond = 0
	    global.enemiesencountered = 0
	    global.enemieskilled = 0
	    global.enemiesspared = 0
	}



}
