dist = point_distance(x, y, global.soulxposition, global.soulyposition)
if (onplayer == 0)
{
    if (dist > spd)
        move_towards_point(global.soulxposition, global.soulyposition, spd)
    else
    {
        speed = 0
        onplayer = 1
        x = global.soulxposition
        y = global.soulyposition
    }
}
if (onplayer == 1)
{
    x = global.soulxposition
    y = global.soulyposition
}

