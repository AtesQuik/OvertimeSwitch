if (progress == 2)
{
    with (obj_pro_stopped)
        image_index = 0
    if (doormove < 20)
        doormove += 2
    else
    {
        progress = 3
        audio_play_sound(snd_elevator3, 1, false)
    }
}
if (progress == 3)
{
    progress = 4
    alarm[2] = 30
}
if (progress == 5)
{
    audio_stop_sound(mus_elevator_last)
    audio_play_sound(snd_blink, 1, false)
    progress = 6
    alarm[4] = 60
}
if (progress == 7 && (!instance_exists(obj_text_box)))
{
    audio_play_sound(snd_shoot, 1, false)
    progress = 8
}
if (progress == 8)
{
    if (blackscreen < 1)
        blackscreen += 0.05
    else
    {
        alarm[5] = 30
        progress = 9
    }
}

