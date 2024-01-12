function scr_load_universal() {
	if file_exists("Universal.sav")
	{
	    ini_open("Universal.sav")
	    global.playername = ini_read_string("Player", "playername", "")
	    global.inputname = ini_read_real("Player", "inputname", 0)
	    global.savename = ini_read_string("Save", "savename", "undertale_save")
	    global.controlsseen = ini_read_real("Universal", "controlsseen", 0)
	    global.completedneutral = ini_read_real("Universal", "completedneutral", 0)
	    global.completedpacifist = ini_read_real("Universal", "completedpacifist", 0)
	    global.completedgenocide = ini_read_real("Universal", "completedgenocide", 0)
	    global.pacifistenabled = ini_read_real("Universal", "pacifistenabled", 0)
	    ini_close()
	}
	else
	{
	    global.playername = "Miss P"
	    global.inputname = 0
	    global.savename = "undertale_save"
	    global.controlsseen = 0
	    global.completedneutral = 0
	    global.completedpacifist = 0
	    global.completedgenocide = 0
	    global.pacifistenabled = 0
	}



}
