if (other.soulhit == 0 && global.soulmoving == 0)
{
    audio_play_sound(snd_soul_hit, 1, false)
    global.playerhealth -= damagedone
    with (obj_fake_evade_soul)
    {
        soulhit = 1
        alarm[0] = 30
    }
}
