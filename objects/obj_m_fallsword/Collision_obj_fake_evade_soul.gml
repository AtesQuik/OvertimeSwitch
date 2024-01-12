var __b__;
__b__ = action_if_variable(global.soulhit, 0, 0)
if __b__
{
    if (other.soulhit == 0)
    {
        audio_play_sound(snd_soul_hit, 1, false)
        global.playerhealth -= damagedone
        with (obj_fake_evade_soul)
        {
            soulhit = 1
            alarm[0] = 30
        }
    }
    action_kill_object()
}
