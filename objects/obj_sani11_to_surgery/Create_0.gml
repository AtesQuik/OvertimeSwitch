var __b__;
__b__ = action_if_variable(global.hospitalprogress, 25, 2)
if __b__
    action_kill_object()
__b__ = action_if_variable(global.saniblocked, 0, 0)
if __b__
    action_kill_object()
image_speed = 0

