image_index = 3
image_speed = 0
progress = 0
genocide = 0
global.textboxtop = 1
if (global.dellprogress > 0)
{
    if (global.dellhired == 1)
    {
        instance_destroy()
        if (global.dellprogress == 1)
            instance_create(510, 160, obj_mbm_dell2)
    }
    else
        instance_destroy()
}

