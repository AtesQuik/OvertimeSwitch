if (x < -100 || x > 740 || y > 580 || y < -100)
    instance_destroy()
if (progress == 0)
{
    if (movedirection == 0)
    {
        if (x < 200)
            x += 5
        else
        {
            progress = 1
            alarm[1] = 30
        }
    }
    else if (x > 440)
        x -= 5
    else
    {
        progress = 1
        alarm[1] = 30
    }
}
if (progress < 2)
{
    if (movedirection == 0 && x < 300)
        y += 2
    if (movedirection == 1 && x > 340)
        y -= 2
}
if (progress == 2)
{
    if (movedirection == 0)
        x += spd
    else
        x -= spd
}

