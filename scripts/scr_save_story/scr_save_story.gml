function scr_save_story() {
	if file_exists("Story.sav")
	    file_delete("Story.sav")
	ini_open("Story.sav")
	ini_write_real("Story", "turnedorange", global.turnedorange)
	ini_write_real("Story", "scoutturned", global.scoutturned)
	ini_write_real("Story", "pyroprogress", global.pyroprogress)
	ini_write_real("Story", "reloaddellkilled", global.reloaddellkilled)
	ini_write_real("Story", "reloaddellhired", global.reloaddellhired)
	ini_write_real("Story", "timesdied", global.timesdied)
	ini_write_real("Story", "mishatimesdied", global.mishatimesdied)
	ini_write_real("Story", "delltimesdied", global.delltimesdied)
	ini_close()



}
