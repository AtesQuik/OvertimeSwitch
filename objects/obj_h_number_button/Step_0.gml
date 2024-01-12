if (activated == 0 && place_meeting(x, y, obj_protagonist))
{
    with (obj_h_number_spikes_up)
    {
        if (number1 == 0)
        {
            if (!audio_is_playing(snd_step))
                audio_play_sound(snd_step, 1, false)
            other.activated = 1
            number1 = other.buttonnumber
        }
        else if (number2 == 0)
        {
            if (!audio_is_playing(snd_step))
                audio_play_sound(snd_step, 1, false)
            other.activated = 1
            number2 = other.buttonnumber
        }
        else if (number3 == 0)
        {
            if (!audio_is_playing(snd_step))
                audio_play_sound(snd_step, 1, false)
            other.activated = 1
            number3 = other.buttonnumber
        }
        else if (number4 == 0 && correct4 != 0)
        {
            if (!audio_is_playing(snd_step))
                audio_play_sound(snd_step, 1, false)
            other.activated = 1
            number4 = other.buttonnumber
        }
    }
}

