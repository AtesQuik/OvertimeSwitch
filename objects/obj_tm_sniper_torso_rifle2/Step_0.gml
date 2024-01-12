var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 9, 2)
if __b__
    action_kill_object()
else
{
    __b__ = action_if_variable(global.sniperkilled, 1, 0)
    if __b__
        action_kill_object()
}

