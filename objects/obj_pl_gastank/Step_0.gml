if (progress == 1 && (!instance_exists(obj_pl_gas)))
{
    progress = 2
    if (!audio_is_playing(snd_tankopen))
        audio_play_sound(snd_tankopen, 1, false)
}
if (progress == 2)
{
    if (topangle < 120)
        topangle += 3
    if (topangle == 120)
    {
        progress = 3
        alarm[0] = 30
    }
}
if (progress == 6)
{
    if (topangle > 0)
        topangle -= 3
    if (topangle == 0)
    {
        progress = 7
        if (!audio_is_playing(snd_tankclose))
            audio_play_sound(snd_tankclose, 1, false)
    }
}
if (progress == 7)
    instance_destroy()

