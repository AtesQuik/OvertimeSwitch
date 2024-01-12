if (saved == 0)
{
    if (other.soulhit == 0)
    {
        audio_play_sound(snd_soul_hit, 1, false)
        global.playerhealth -= 1
        with (obj_pl_evade_soul)
        {
            soulhit = 1
            alarm[0] = 60
        }
    }
}
