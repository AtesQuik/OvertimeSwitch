function scr_room_change() {
	room_goto(roomname)
	global.playerxpos = xpos
	global.playerypos = ypos
	global.playerdirection = pdirection
	if (!instance_exists(obj_room_fade_in))
	    instance_create(x, y, obj_room_fade_in)



}
