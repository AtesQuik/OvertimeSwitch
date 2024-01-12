var __b__;
__b__ = action_if_variable(global.hospitalprogress, 12, 2)
if __b__
{
    instance_destroy()
    with (obj_h_number_button)
        activated = 1
    with (obj_h_number_spikes_up)
        instance_destroy()
}
else if (!instance_exists(obj_h_number_spikes_up))
{
    audio_play_sound(snd_close1, 1, false)
    global.hospitalprogress = 13
}

