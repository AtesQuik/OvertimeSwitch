function scr_save_universal() {
	if file_exists("Universal.sav")
	    file_delete("Universal.sav")
	switch_saveload()
	ini_open("Universal.sav")
	ini_write_string("Player", "playername", global.playername)
	ini_write_real("Player", "inputname", global.inputname)
	ini_write_string("Save", "savename", global.savename)
	ini_write_real("Universal", "controlsseen", global.controlsseen)
	ini_write_real("Universal", "completedneutral", global.completedneutral)
	ini_write_real("Universal", "completedpacifist", global.completedpacifist)
	ini_write_real("Universal", "completedgenocide", global.completedgenocide)
	ini_write_real("Universal", "pacifistenabled", global.pacifistenabled)
	switch_saveloadend()



}
