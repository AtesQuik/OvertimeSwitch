if (reverse == 0)
{
    if (spd < 0)
        rocketdir = -1
    if (spd > 0)
        rocketdir = 1
}
else
{
    if (spd > 0)
        rocketdir = -1
    if (spd < 0)
        rocketdir = 1
}
x += spd
if (reverse == 0)
{
    if (rocketdir == 1 && x > 340)
        instance_destroy()
    if (rocketdir == -1 && x < -20)
        instance_destroy()
}
else
{
    if (rocketdir == -1 && x > 340)
        instance_destroy()
    if (rocketdir == 1 && x < -20)
        instance_destroy()
}

