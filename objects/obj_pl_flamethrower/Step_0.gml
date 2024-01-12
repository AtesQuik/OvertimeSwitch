if (progress == 0)
{
    if (gundir == 0)
    {
        if (x > 500)
            x -= 10
        if (y > 240)
            y -= 10
        if (image_angle < -45)
            image_angle += 5
        if (image_angle == -45 && x <= 500 && y <= 240)
        {
            progress = 1
            alarm[2] = 30
        }
    }
    if (gundir == 1)
    {
        if (x < 140)
            x += 10
        if (y > 240)
            y -= 10
        if (image_angle > 45)
            image_angle -= 5
        if (image_angle == 45 && x >= 140 && y <= 240)
        {
            progress = 1
            alarm[2] = 30
        }
    }
}
if (progress == 3)
{
    if (gundir == 0)
    {
        if (x < 560)
            x += 2
        if (image_angle > -85)
            image_angle -= 1
        if (image_angle == -85 && x >= 560)
        {
            progress = 4
            alarm[1] = 90
        }
    }
    if (gundir == 1)
    {
        if (x > 80)
            x -= 2
        if (image_angle < 85)
            image_angle += 1
        if (image_angle == 85 && x <= 80)
        {
            progress = 4
            alarm[1] = 90
        }
    }
}
if (progress == 5 && (!instance_exists(obj_pl_flame)))
{
    if (gundir == 0)
    {
        if (image_angle > -90)
            image_angle -= 2
        if (x < 700)
            x += 5
        else
            instance_destroy()
    }
    if (gundir == 1)
    {
        if (image_angle < 90)
            image_angle += 2
        if (x > -60)
            x -= 5
        else
            instance_destroy()
    }
}

