if (progress == 0)
{
    if (y > outsidey)
        y -= spd
    else
    {
        progress = 1
        alarm[0] = 60
    }
}
if (progress == 2)
{
    warning = 0
    if (y < 480)
        y += spd
    else
        progress = 3
}
if (progress == 3)
    instance_destroy()

