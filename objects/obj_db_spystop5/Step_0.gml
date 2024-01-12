if (progress == 1 && (!instance_exists(obj_text_box)))
{
    audio_play_sound(snd_laugh, 1, false)
    with (obj_pro_stopped)
        instance_destroy()
    global.spystops = 5
    instance_destroy()
}

