var __b__;
__b__ = action_if_variable(global.mineprogress, 3, 1)
if __b__
    action_kill_object()
else
{
    action_create_object(obj_solid, 450, 90)
    action_create_object(obj_solid, 450, 110)
    action_create_object(obj_solid, 450, 130)
    action_create_object(obj_solid, 450, 150)
}

