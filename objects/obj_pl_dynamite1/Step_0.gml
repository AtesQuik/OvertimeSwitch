if (y < 240)
{
    y += 6
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
if (saved == 0)
{
    if (helpprogress == 0 && helpthere == 0 && instance_exists(obj_pl_helpbox))
    {
        helpthere = 1
        alarm[3] = 30
    }
    if (helpprogress == 1)
    {
        if (extra < 3)
            extra += 0.05
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

