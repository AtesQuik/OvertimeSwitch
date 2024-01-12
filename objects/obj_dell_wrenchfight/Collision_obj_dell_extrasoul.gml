var __b__;
__b__ = action_if_variable(other.soulhit, 0, 0)
if __b__
{
    audio_play_sound(snd_soul_hit, 1, false)
    global.playerhealth -= damagedone
    with (obj_dell_extrasoul)
    {
        soulhit = 1
        alarm[0] = global.invulnerabletime
    }
    scr_soul_bleeding()
}
