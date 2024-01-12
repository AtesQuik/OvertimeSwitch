if (progress == 1)
{
    if (cbardir == 0)
    {
        if (x < 230)
            x += 2
        if (image_angle > -30)
            image_angle -= 2
    }
    else
    {
        if (x > 80)
            x -= 2
        if (image_angle < 30)
            image_angle += 2
    }
}
if (progress == 2)
{
    if (cbardir == 0)
    {
        if (x > 150)
            x -= spd
        if (image_angle < 10)
            image_angle += 10
    }
    else
    {
        if (x < 170)
            x += spd
        if (image_angle > -10)
            image_angle -= 10
    }
}
if (progress == 3)
{
    if (image_alpha > 0)
        image_alpha -= 0.25
    else
        instance_destroy()
}

