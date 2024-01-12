if (progress == 1)
{
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
    if (movedirection == 0)
    {
        if (x < 760)
            x += 0.5
        else
        {
            newone = 1
            instance_destroy()
        }
    }
    if (movedirection == 1)
    {
        if (x > -120)
            x -= 0.5
        else
        {
            newone = 1
            instance_destroy()
        }
    }
}
if (saved == 0)
{
    if (helpprogress == 0 && helpthere == 0 && instance_exists(obj_pl_helpbox))
    {
        helpthere = 1
        alarm[1] = 120
    }
    if (helpprogress == 1)
    {
        if (extra < 3)
            extra += 0.1
        extrax = random_range((-extra), extra)
        extray = random_range((-extra), extra)
    }
    if (helpthere == 1 && (!instance_exists(obj_pl_helpbox)))
    {
        helpprogress = 2
        saved = 1
        extrax = 0
        extray = 0
    }
}

