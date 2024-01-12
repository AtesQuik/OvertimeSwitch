function scr_random_encounter() {
	global.battlehappening = 1
	global.previousroom = room
	if instance_exists(obj_protagonist)
	{
	    global.playerxpos = obj_protagonist.x
	    global.playerypos = obj_protagonist.y
	    global.playerdirection = obj_protagonist.prodirection
	}
	else
	    global.noprotagonist = 1
	if (global.encountersdisabled == 1)
	    instance_create(global.playerxpos, global.playerypos, obj_soul_battlestart)
	else
	    instance_create(global.playerxpos, global.playerypos, obj_com_exclamation)



}
