if (saved == 0)
{
    if (other.soulhit == 0)
    {
        audio_play_sound(snd_soul_hit, 1, false)
        global.playerhealth -= 3
        with (obj_pl_evade_soul)
        {
            soulhit = 1
            alarm[0] = 60
        }
        instance_destroy()
    }
}
else
{
    audio_play_sound(snd_activate_save, 1, false)
    if (global.playerhealth > (global.fullhealth - 3))
        global.playerhealth = global.fullhealth
    else
        global.playerhealth += 3
    instance_destroy()
}
