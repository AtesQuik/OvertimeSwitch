function scr_step_typ(argument0) {
	if (!(stsk == vk_nokey))
	{
	    if (keyboard_check_released(stsk) && enterReady == 1)
	        skip = 1
	}
	if (skip == 0)
	{
	    if (sst < (string_length(ist) + 1))
	    {
	        sst += argument0
	        audio_play_sound(snd_voice_empty, 1, false)
	        drwst = string_delete(ist, sst, est)
	    }
	}
	if (skip == 1 && (!(drwst == ist)))
	    drwst = ist
	if (visible == false)
	    visible = true



}
