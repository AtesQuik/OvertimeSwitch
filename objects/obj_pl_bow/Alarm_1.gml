progress = 2
image_index = 0
if (actnow == 1)
{
    actnow = 2
    with (instance_create(x, y, obj_pl_act))
    {
        shotout = 1
        image_angle = point_direction(x, y, global.soulxposition, global.soulyposition)
        move_towards_point(global.soulxposition, global.soulyposition, 6)
        alarm[0] = 60
    }
}
else
{
    with (instance_create(x, y, obj_pl_arrow))
        saved = other.saved
}

