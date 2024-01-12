if (leftorright == 0)
{
    if (shake > -2)
        shake -= 0.05
    else
        leftorright = 1
}
if (leftorright == 1)
{
    if (shake < 2)
        shake += 0.05
    else
        leftorright = 0
}
if (boom == 1 && (!instance_exists(obj_tm_explosion)))
{
    if (y > -90)
        y -= 3
    else
        instance_destroy()
}

