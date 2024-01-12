var __b__;
__b__ = action_if_variable(global.mineprogress, 3, 2)
if __b__
    action_kill_object()
if (global.zepheniahkilled == 1 || global.mineprogress > 3)
    instance_destroy()
else
    alarm[0] = 60
image_speed = 0
image_index = 3
progress = 0
transparent = 1

