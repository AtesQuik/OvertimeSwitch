if (y < 580)
{
    y += 5
    if (leftorright == 0)
    {
        if (image_angle < 359)
            image_angle += 1
        else
            image_angle = 0
    }
    if (leftorright == 1)
    {
        if (image_angle > 1)
            image_angle -= 1
        else
            image_angle = 360
    }
}
else
    instance_destroy()

