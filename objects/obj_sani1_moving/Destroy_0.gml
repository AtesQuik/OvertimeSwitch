var __b__;
__b__ = action_if_variable(global.hospitalprogress, 0, 0)
if __b__
{
    with (obj_pro_stopped)
        action_kill_object()
    global.hospitalprogress = 1
    with (obj_music_player)
        musictrack = 113
}

