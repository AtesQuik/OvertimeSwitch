if (image_alpha > 0)
{
    image_alpha -= 0.1
    if (image_index == 0)
    {
        if (image_angle < 360)
            image_angle += 20
        else
            image_angle = 0
    }
    if (image_index == 1)
    {
        if (image_angle > 0)
            image_angle -= 20
        else
            image_angle = 360
    }
}
else
    instance_destroy()

