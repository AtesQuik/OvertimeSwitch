if (unlocked == 1 && (!instance_exists(obj_text_box)))
{
    audio_play_sound(snd_close2, 1, false)
    instance_destroy()
}

