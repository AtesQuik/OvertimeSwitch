var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 3, 2)
if __b__
    action_kill_object()
else if place_meeting(x, y, obj_protagonist)
{
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        instance_destroy()
    }
    with (obj_tm_jane4)
        progress = 4
    instance_destroy()
}

