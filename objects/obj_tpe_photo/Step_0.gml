if (progress == 0)
{
    if (spindirection == 0)
    {
        if (image_angle < 5)
            image_angle += 0.5
    }
    if (spindirection == 1)
    {
        if (image_angle > -5)
            image_angle -= 0.5
    }
    if (leftorright == 0)
    {
        if (x >= gotox)
        {
            speed = 0
            progress = 1
        }
    }
    if (leftorright == 1)
    {
        if (x <= gotox)
        {
            speed = 0
            progress = 1
        }
    }
}
if (fadeout == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.025
}

