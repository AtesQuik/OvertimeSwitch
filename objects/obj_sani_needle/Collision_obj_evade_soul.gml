if (healornoheal == 0)
{
    if (global.soulhit == 0)
    {
        instance_destroy()
        script_execute(scr_soul_hit)
    }
}
else
{
    audio_play_sound(snd_activate_save, 1, false)
    instance_destroy()
    if (global.playerhealth < (global.fullhealth - 3))
        global.playerhealth += 3
    else
        global.playerhealth = global.fullhealth
}
