if (other.soulhit == 0)
{
    instance_destroy()
    if (other.invulnerable == 0)
    {
        audio_play_sound(snd_soul_hit, 1, false)
        if (global.playerhealth > (0 + damagedone))
            global.playerhealth -= damagedone
        else
            global.playerhealth = 1
        with (obj_fake_evade_soul)
        {
            soulhit = 1
            alarm[0] = 30
        }
    }
}
