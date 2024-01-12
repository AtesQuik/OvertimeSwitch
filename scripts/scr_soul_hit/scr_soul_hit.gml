function scr_soul_hit() {
	audio_play_sound(snd_soul_hit, 1, false)
	global.playerhealth -= damagedone
	with (obj_evade_soul)
	{
	    global.soulhit = 1
	    alarm[0] = global.invulnerabletime
	}



}
