if (orangeorblue == 0)
{
    if (other.soulhit == 0)
    {
        instance_destroy()
        audio_play_sound(snd_soul_hit, 1, false)
        global.playerhealth -= damagedone
        with (obj_fake_evade_soul)
        {
            soulhit = 1
            alarm[0] = 30
        }
    }
}
if (orangeorblue == 1)
{
    if (other.soulhit == 0 && global.soulmoving == 0)
    {
        instance_destroy()
        audio_play_sound(snd_soul_hit, 1, false)
        global.playerhealth -= damagedone
        with (obj_fake_evade_soul)
        {
            soulhit = 1
            alarm[0] = 30
        }
    }
}
if (orangeorblue == 2)
{
    if (other.soulhit == 0 && global.soulmoving == 1)
    {
        instance_destroy()
        audio_play_sound(snd_soul_hit, 1, false)
        global.playerhealth -= damagedone
        with (obj_fake_evade_soul)
        {
            soulhit = 1
            alarm[0] = 30
        }
    }
}
