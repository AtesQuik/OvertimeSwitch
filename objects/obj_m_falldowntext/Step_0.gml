scr_transition_when_ready()
with (obj_protagonist)
    instance_destroy()
if (progress == 1 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 4)
    {
        progress = 2
        audio_play_sound(snd_whitescreen, 1, false)
    }
}
if (progress == 2)
{
    if (whitescreen < 1)
        whitescreen += 0.01
    if (!audio_is_playing(snd_whitescreen))
    {
        global.timergo = 1
        progress = 3
        instance_create(x, y, obj_room_fade_out)
    }
}
if (progress == 3)
{
    if (global.transition == 1)
    {
        script_execute(scr_room_change)
        global.transition = 2
        global.mineprogress = 3
    }
}

