var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 8, 2)
if __b__
    action_kill_object()
else if instance_exists(obj_protagonist)
    move_towards_point(obj_protagonist.x, obj_protagonist.y, 12)

