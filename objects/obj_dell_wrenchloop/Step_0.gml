if (global.battlemenuoffline == 1)
    deletethis = 1
if (moveprogress == 0)
{
    if (movex > 0)
    {
        x -= spd
        movex -= spd
    }
    else
        moveprogress = 1
}
if (moveprogress == 1)
{
    if (y < 255)
        y += spd
    else if (deletethis == 0)
    {
        moveprogress = 3
        movex = 70
        x = startx
    }
    else
        instance_destroy()
}
if (moveprogress == 3)
{
    if (deletethis == 0)
    {
        if (y > 225)
            y -= spd
        else
            moveprogress = 0
    }
    else if (y < 255)
        y += spd
    else
        instance_destroy()
}

