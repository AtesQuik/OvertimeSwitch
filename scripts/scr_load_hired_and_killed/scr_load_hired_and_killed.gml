function scr_load_hired_and_killed() {
	if file_exists("Mercenaries.sav")
	{
	    ini_open("Mercenaries.sav")
	    global.sanikilled = ini_read_real("Killed", "sanikilled", 0)
	    global.sniperkilled = ini_read_real("Killed", "sniperkilled", 0)
	    global.janekilled = ini_read_real("Killed", "janekilled", 0)
	    global.tavishkilled = ini_read_real("Killed", "tavishkilled", 0)
	    global.spykilled = ini_read_real("Killed", "spykilled", 0)
	    global.scoutkilled = ini_read_real("Killed", "scoutkilled", 0)
	    global.mishakilled = ini_read_real("Killed", "mishakilled", 0)
	    global.zepheniahkilled = ini_read_real("Killed", "zepheniahkilled", 0)
	    global.merc1killed = ini_read_real("Killed", "merc1killed", 0)
	    global.merc2killed = ini_read_real("Killed", "merc2killed", 0)
	    global.merc3killed = ini_read_real("Killed", "merc3killed", 0)
	    global.dellkilled = ini_read_real("Killed", "dellkilled", 0)
	    global.sanihired = ini_read_real("Hired", "sanihired", 0)
	    global.sniperhired = ini_read_real("Hired", "sniperhired", 0)
	    global.janehired = ini_read_real("Hired", "janehired", 0)
	    global.tavishhired = ini_read_real("Hired", "tavishhired", 0)
	    global.spyhired = ini_read_real("Hired", "spyhired", 0)
	    global.scouthired = ini_read_real("Hired", "scouthired", 0)
	    global.mishahired = ini_read_real("Hired", "mishahired", 0)
	    global.zepheniahhired = ini_read_real("Hired", "zepheniahhired", 0)
	    global.merc1hired = ini_read_real("Hired", "merc1hired", 0)
	    global.merc2hired = ini_read_real("Hired", "merc2hired", 0)
	    global.merc3hired = ini_read_real("Hired", "merc3hired", 0)
	    global.dellhired = ini_read_real("Hired", "dellhired", 0)
	    ini_close()
	}
	else
	{
	    global.sanikilled = 0
	    global.sanihired = 0
	    global.sniperkilled = 0
	    global.sniperhired = 0
	    global.janekilled = 0
	    global.janehired = 0
	    global.tavishkilled = 0
	    global.tavishhired = 0
	    global.spykilled = 0
	    global.spyhired = 0
	    global.scoutkilled = 0
	    global.scouthired = 0
	    global.dellkilled = 0
	    global.dellhired = 0
	    global.zepheniahhired = 0
	    global.zepheniahkilled = 0
	    global.merc1killed = 0
	    global.merc1hired = 0
	    global.merc2killed = 0
	    global.merc2hired = 0
	    global.merc3killed = 0
	    global.merc3hired = 0
	}



}
