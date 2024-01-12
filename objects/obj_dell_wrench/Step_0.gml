if (movedirection == 1 && spd != 0)
{
    if (x < 204)
        x += spd
    else
        instance_destroy()
}
if (movedirection == 2 && spd != 0)
{
    if (x > 106)
        x -= spd
    else
        instance_destroy()
}
if (yprogress == 0 && yspeed != 0)
{
    if (bottomortop == 0)
    {
        if (y > movetoy)
            y -= yspeed
        else
        {
            yprogress = 1
            alarm[0] = 15
        }
    }
    if (bottomortop == 1)
    {
        if (y < movetoy)
            y += yspeed
        else
        {
            yprogress = 1
            alarm[0] = 15
        }
    }
}
if (yprogress == 2)
{
    if (bottomortop == 0)
    {
        if (y < spawny)
            y += yspeed
        else
            instance_destroy()
    }
    if (bottomortop == 1)
    {
        if (y > spawny)
            y -= yspeed
        else
            instance_destroy()
    }
}

