var __b__;
action_set_relative(1)
__b__ = action_if_variable(global.hospitalprogress, 24, 2)
if __b__
{
    action_kill_object()
    __b__ = action_if_variable(global.hospitalprogress, 26, 1)
    if __b__
    {
        with (obj_pro_stopped)
            action_kill_object()
        action_create_object(obj_sani13, 0, 0)
    }
}
action_set_relative(0)
image_speed = 0
action_set_relative(1)
action_set_relative(0)
npcdirection = 0
action_set_relative(1)
action_set_relative(0)

