if (progress == 1 && (!instance_exists(obj_text_box)))
{
    with (obj_music_player)
        instance_destroy()
    progress = 2
    audio_play_sound(snd_amalgam1, 1, false)
}
if (progress == 2)
{
    if (catalpha < 1)
        catalpha += 0.025
    else
    {
        progress = 3
        alarm[0] = 30
    }
}
if (progress == 4)
{
    if (transform < 5)
        transform += 0.2
    else
    {
        transform = 5
        progress = 5
        alarm[1] = 30
    }
}

