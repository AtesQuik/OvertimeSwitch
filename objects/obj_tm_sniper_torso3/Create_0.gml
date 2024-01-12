var __b__;
__b__ = action_if_variable(global.thundermountainover, 1, 0)
if __b__
    action_kill_object()
else
{
    __b__ = action_if_variable(global.sniperkilled, 1, 0)
    if __b__
    {
        global.thundermountainover = 1
        global.thundermountainprogress = 11
        action_kill_object()
    }
}
image_speed = 0.05
progress = 0
action_set_alarm(60, 0)

