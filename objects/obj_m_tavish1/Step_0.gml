var __b__;
__b__ = action_if_variable(global.mineprogress, 0, 2)
if __b__
    action_kill_object()
else if (sprite_index == spr_tavish_right)
{
    if (image_index == 0 || image_index == 2)
        audio_play_sound(snd_knight, 1, false)
}

