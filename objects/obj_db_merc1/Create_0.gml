image_speed = 0
if (global.dbprogress > 4 || global.dbturrets1solved == 1)
    instance_destroy()
else
{
    instance_create((x - 20), y, obj_solid)
    instance_create((x + 20), y, obj_solid)
}

