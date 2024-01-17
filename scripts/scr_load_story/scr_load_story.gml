function scr_load_story() {
	if file_exists("Story.sav")
	{
	    ini_open("Story.sav")
		switch_saveload()
	    global.turnedorange = ini_read_real("Story", "turnedorange", 0)
	    global.scoutturned = ini_read_real("Story", "scoutturned", 0)
	    global.pyroprogress = ini_read_real("Story", "pyroprogress", 0)
	    global.reloaddellkilled = ini_read_real("Story", "reloaddellkilled", 0)
	    global.reloaddellhired = ini_read_real("Story", "reloaddellhired", 0)
	    global.timesdied = ini_read_real("Story", "timesdied", 0)
	    global.mishatimesdied = ini_read_real("Story", "mishatimesdied", 0)
	    global.delltimesdied = ini_read_real("Story", "delltimesdied", 0)
	    switch_saveloadend()
	}
	else
	{
	    global.turnedorange = 0
	    global.scoutturned = 0
	    global.pyroprogress = 0
	    global.reloaddellkilled = 0
	    global.reloaddellhired = 0
	    global.timesdied = 0
	    global.mishatimesdied = 0
	    global.delltimesdied = 0
	}



}
