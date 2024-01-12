var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 5, 2)
if __b__
    action_kill_object()
else if instance_exists(obj_pro_stopped)
    move_towards_point(obj_pro_stopped.x, obj_pro_stopped.y, 3.75)

