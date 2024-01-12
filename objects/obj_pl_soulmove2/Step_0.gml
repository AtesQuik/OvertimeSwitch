var dist;
dist = point_distance(x, y, movetox, movetoy)
if (progress == 0)
{
    if (dist > spd)
        move_towards_point(movetox, movetoy, spd)
    else
    {
        progress = 1
        speed = 0
        x = movetox
        y = movetoy
    }
}

