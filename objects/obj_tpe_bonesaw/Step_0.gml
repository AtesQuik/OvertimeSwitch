if (progress == 0)
{
    if (transparent < 1)
        transparent += 0.05
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    if (startx < 160)
        move_towards_point(260, 76, spd)
    else
        move_towards_point(60, 76, spd)
}
if (progress == 2)
{
    if (startx < 160)
    {
        if (x >= 260 && y <= 66)
        {
            speed = 0
            progress = 3
        }
    }
    else if (x <= 60 && y <= 66)
    {
        speed = 0
        progress = 3
    }
}
if (progress == 3)
{
    image_xscale = 1
    image_angle = point_direction(x, y, global.soulxposition, global.soulyposition)
    progress = 4
    if (startx < 160)
        move_towards_point(240, 96, 2)
    else
        move_towards_point(80, 96, 2)
    alarm[0] = 15
}
if (progress == 5)
{
    image_angle = point_direction(x, y, global.soulxposition, global.soulyposition)
    if (transparent > 0)
        transparent -= 0.05
    else
        instance_destroy()
}

