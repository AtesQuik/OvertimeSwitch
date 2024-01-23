function scr_save_hired_and_killed() {
	if file_exists("Mercenaries.sav")
	    file_delete("Mercenaries.sav")
	switch_saveload()
	ini_open("Mercenaries.sav")
	ini_write_real("Killed", "sanikilled", global.sanikilled)
	ini_write_real("Killed", "sniperkilled", global.sniperkilled)
	ini_write_real("Killed", "janekilled", global.janekilled)
	ini_write_real("Killed", "tavishkilled", global.tavishkilled)
	ini_write_real("Killed", "spykilled", global.spykilled)
	ini_write_real("Killed", "scoutkilled", global.scoutkilled)
	ini_write_real("Killed", "mishakilled", global.mishakilled)
	ini_write_real("Killed", "zepheniahkilled", global.zepheniahkilled)
	ini_write_real("Killed", "merc1killed", global.merc1killed)
	ini_write_real("Killed", "merc2killed", global.merc2killed)
	ini_write_real("Killed", "merc3killed", global.merc3killed)
	ini_write_real("Killed", "dellkilled", global.dellkilled)
	ini_write_real("Hired", "sanihired", global.sanihired)
	ini_write_real("Hired", "sniperhired", global.sniperhired)
	ini_write_real("Hired", "janehired", global.janehired)
	ini_write_real("Hired", "tavishhired", global.tavishhired)
	ini_write_real("Hired", "spyhired", global.spyhired)
	ini_write_real("Hired", "scouthired", global.scouthired)
	ini_write_real("Hired", "mishahired", global.mishahired)
	ini_write_real("Hired", "zepheniahhired", global.zepheniahhired)
	ini_write_real("Hired", "merc1hired", global.merc1hired)
	ini_write_real("Hired", "merc2hired", global.merc2hired)
	ini_write_real("Hired", "merc3hired", global.merc3hired)
	ini_write_real("Hired", "dellhired", global.dellhired)
	switch_saveloadend()



}
