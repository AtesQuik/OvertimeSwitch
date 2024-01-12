function scr_text_sounds() {
	if keyboard_check_pressed(global.cancelkey)
	    POS = (string_length(CSTR) + 1)
	else
	{
	    POS += 1
	    if (voicenow < 2)
	        voicenow += 1
	    else
	        voicenow = 0
	    if (POS < (string_length(CSTR) + 1))
	    {
	        if (dontplay == 0)
	        {
	            if (textvoice != snd_voice_standard && textvoice != snd_text_battle)
	            {
	                if (voicenow == 0)
	                    audio_play_sound(textvoice, 1, false)
	            }
	            else
	                audio_play_sound(textvoice, 1, false)
	        }
	    }
	}



}
