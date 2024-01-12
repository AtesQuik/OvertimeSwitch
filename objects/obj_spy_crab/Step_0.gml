if (crabdir == 0)
{
    x += spd
    if (x > 340)
        instance_destroy()
}
else
{
    x -= spd
    if (x < -20)
        instance_destroy()
}

