function scr_stop_music() {
	if instance_exists(obj_music_player)
	{
	    with (obj_music_player)
	        instance_destroy()
	}



}
