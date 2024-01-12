var __b__;
action_set_relative(1)
__b__ = action_if_variable(progress, 0, 0)
if __b__
{
    action_create_object(obj_tm_grenade_blink, 0, 0)
    action_set_relative(0)
    progress = 1
    action_set_relative(1)
    action_set_relative(0)
    dramaticpause = 1
    action_set_relative(1)
}
else
{
    __b__ = action_if_variable(progress, 1, 0)
    if __b__
    {
        action_set_relative(0)
        progress = 2
        action_set_relative(1)
        action_sound(11, 0)
        action_path(16, 1, 0, 0)
    }
    else
    {
        __b__ = action_if_variable(progress, 2, 0)
        if __b__
        {
            action_set_relative(0)
            progress = 3
            action_set_relative(1)
            action_sound(11, 0)
            action_path(17, 2, 0, 0)
        }
        else
        {
            __b__ = action_if_variable(progress, 3, 0)
            if __b__
                action_kill_object()
        }
    }
}
action_set_relative(0)

