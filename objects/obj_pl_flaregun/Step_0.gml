if (progress == 0)
{
    if (gundir == 0)
    {
        if (image_angle < 0)
            image_angle += 2.25
        if (x > 610)
            x -= 4.5
        if (image_angle == 0 && x <= 610)
        {
            progress = 1
            alarm[0] = 30
        }
    }
    if (gundir == 1)
    {
        if (image_angle > 0)
            image_angle -= 2.25
        if (x < 30)
            x += 4.5
        if (image_angle == 0 && x >= 30)
        {
            progress = 1
            alarm[0] = 30
        }
    }
}
if (progress == 2)
{
    if (gundir == 0)
    {
        if (image_angle > -30)
            image_angle -= 3
        if (x < 640)
            x += 3
        if (image_angle == -30 && x >= 640)
            progress = 3
    }
    if (gundir == 1)
    {
        if (image_angle < 30)
            image_angle += 3
        if (x > 0)
            x -= 3
        if (image_angle == 30 && x <= 0)
            progress = 3
    }
}
if (progress == 3)
{
    if (gundir == 0)
    {
        if (image_angle < 0)
            image_angle += 2
        if (x > 610)
            x -= 2
        if (image_angle == 0 && x <= 610)
            progress = 5
    }
    if (gundir == 1)
    {
        if (image_angle > 0)
            image_angle -= 2
        if (x < 30)
            x += 2
        if (image_angle == 0 && x >= 30)
            progress = 5
    }
}
if (progress == 5)
{
    if (gundir == 0)
    {
        if (image_angle < 45)
            image_angle += 4.5
        if (x < 800)
            x += 4
        if (image_angle == 45 && x >= 800)
            progress = 6
    }
    if (gundir == 1)
    {
        if (image_angle > -45)
            image_angle -= 4.5
        if (x > -160)
            x -= 4
        if (image_angle == -45 && x <= -160)
            progress = 6
    }
}
if (progress == 6)
    instance_destroy()

