if (movedirection == 1 && spd != 0)
{
    if (y < 195)
        y += spd
    else
        instance_destroy()
}
if (movedirection == 2 && spd != 0)
{
    if (y > 115)
        y -= spd
    else
        instance_destroy()
}
if (xprogress == 0 && xspeed != 0)
{
    if (leftorright == 0)
    {
        if (x < movetox)
            x += xspeed
        else
        {
            xprogress = 1
            alarm[0] = 15
        }
    }
    if (leftorright == 1)
    {
        if (x > movetox)
            x -= xspeed
        else
        {
            xprogress = 1
            alarm[0] = 15
        }
    }
}
if (xprogress == 2)
{
    if (leftorright == 0)
    {
        if (x > spawnx)
            x -= xspeed
        else
            instance_destroy()
    }
    if (leftorright == 1)
    {
        if (x < spawnx)
            x += xspeed
        else
            instance_destroy()
    }
}

