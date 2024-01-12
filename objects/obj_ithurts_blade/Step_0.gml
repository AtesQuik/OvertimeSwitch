if (progress == 0)
{
    if (leftorright == 0)
    {
        if (x < 121)
            x += 2
        else
            progress = 1
    }
    if (leftorright == 1)
    {
        if (x > 199)
            x -= 2
        else
            progress = 1
    }
}
if (progress == 1)
{
    if (leftorright == 0)
    {
        if (image_angle < 270)
            image_angle += 5
        else
        {
            progress = 2
            alarm[0] = 30
        }
    }
    if (leftorright == 1)
    {
        if (image_angle < 90)
            image_angle += 5
        else
        {
            progress = 2
            alarm[0] = 30
        }
    }
}
if (progress == 3)
{
    xshake = random_range(-0.5, 0.5)
    yshake = random_range(-0.5, 0.5)
}

