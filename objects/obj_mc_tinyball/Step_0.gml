if (progress == 0 && y >= 150)
{
    progress = 1
    audio_play_sound(snd_blink, 1, false)
    yellow = 1
    global.soultype = 4
    global.turnedyellow = 1
}
if (progress == 1)
{
    if (yellowy < 185)
        yellowy += 2
    else
    {
        yellowy = 185
        progress = 2
    }
}
if (progress == 3)
{
    yellow = 2
    progress = 4
    audio_play_sound(snd_step, 1, false)
    with (obj_dispenser_battle)
        progress = 3
}
if (progress == 5)
{
    progress = 6
    alarm[0] = 5
}

