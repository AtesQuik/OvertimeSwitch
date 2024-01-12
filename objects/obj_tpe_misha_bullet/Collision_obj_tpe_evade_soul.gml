with (obj_tpe_evade_soul)
{
    if (soulhit == 0)
    {
        audio_play_sound(snd_soul_hit, 1, false)
        soulhit = 1
        alarm[0] = 30
        global.playerhealth -= other.damagedone
        with (other.id)
            instance_destroy()
    }
}
