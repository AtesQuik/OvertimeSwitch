var __b__;
__b__ = action_if_variable(global.hospitalprogress, 26, 1)
if __b__
    action_kill_object()
else
{
    __b__ = action_if_variable(global.hospitalprogress, 37, 2)
    if __b__
    {
        instance_destroy()
        if (global.sanihired == 1)
            instance_create(1020, 150, obj_sani_h_goodbye)
        if (global.sanikilled == 1)
            global.hospitalprogress = 39
    }
}
image_index = 1
image_speed = 0
dramaticturn = 0

