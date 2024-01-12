if (y < -100 || y > 580)
    instance_destroy()
if (axedir == 0)
{
    if (image_angle < 355)
        image_angle += 5
    else
        image_angle = 0
    if (x < -100)
        instance_destroy()
}
if (axedir == 1)
{
    if (image_angle > -355)
        image_angle -= 5
    else
        image_angle = 0
    if (x > 740)
        instance_destroy()
}

