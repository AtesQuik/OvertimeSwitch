var __b__;
__b__ = action_if_variable(global.teufortover, 1, 0)
if __b__
    action_kill_object()
else
{
    if instance_exists(obj_music_player)
    {
        with (obj_music_player)
            instance_destroy()
    }
    image_speed = 0
    image_index = 3
    progress = 0
    action_set_alarm(60, 0)
}

