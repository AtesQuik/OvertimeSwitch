var dist;
if (progress == 0)
{
    dist = point_distance(x, y, 160, 160)
    if (dist > spd)
        move_towards_point(160, 160, spd)
    else
    {
        speed = 0
        x = 160
        y = 60
        progress = 1
    }
}

