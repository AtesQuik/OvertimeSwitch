var __b__;
action_set_relative(1)
__b__ = action_if_variable(global.thundermountainprogress, 11, 1)
if __b__
{
    __b__ = action_if_variable(global.sniperkilled, 0, 0)
    if __b__
        action_create_object(obj_tm_sniper_torso3, 0, 0)
    else
    {
        action_set_relative(0)
        global.thundermountainover = 1
        action_set_relative(1)
        action_set_relative(0)
        global.thundermountainprogress = 11
        action_set_relative(1)
    }
}
action_set_relative(0)

