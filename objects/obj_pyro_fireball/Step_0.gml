if (progress == 1)
{
    if (image_alpha < 1)
        image_alpha += 0.05
    else
        progress = 2
}
if (progress == 2 && instance_number(obj_pyro_fireball) == 8)
{
    progress = 3
    alarm[0] = 30
}
if (progress == 4)
{
    image_angle = point_direction(x, y, global.soulxposition, global.soulyposition)
    if (xextra > 0)
        xextra += 2
    if (xextra < 0)
        xextra -= 2
    if (yextra > 0)
        yextra += 2
    if (yextra < 0)
        yextra -= 2
}
if (progress == 6)
{
    progress = 7
    move_towards_point(global.soulxposition, global.soulyposition, 6)
}
if (progress == 7)
{
    if (x > 740 || x < -100 || y > 580 || y < -100)
        instance_destroy()
}

