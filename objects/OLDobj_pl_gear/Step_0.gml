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
            instance_destroy()
        if (leftorright == 0 && x >= 280 && newone == 0)
            newone = 1
        if (leftorright == 1 && x >= 80 && newone == 0)
            newone = 1
    }
    if (movedirection == 1)
    {
        if (x > -120)
            x -= 0.5
        else
            instance_destroy()
        if (leftorright == 0 && x == 360 && newone == 0)
            newone = 1
        if (leftorright == 1 && x == 560 && newone == 0)
            newone = 1
    }
    if (newone == 1)
    {
        if (movedirection == 0)
        {
            if (leftorright == 0)
            {
                with (instance_create(-120, y, obj_pl_gear))
                {
                    saved = other.saved
                    leftorright = other.leftorright
                    movedirection = other.movedirection
                    helpthere = other.helpthere
                    helpprogress = other.helpprogress
                    progress = 1
                }
            }
            else
            {
                with (instance_create(-320, y, obj_pl_gear))
                {
                    saved = other.saved
                    leftorright = other.leftorright
                    movedirection = other.movedirection
                    helpthere = other.helpthere
                    helpprogress = other.helpprogress
                    progress = 1
                }
            }
        }
        if (movedirection == 1)
        {
            if (leftorright == 0)
            {
                with (instance_create(760, y, obj_pl_gear))
                {
                    saved = other.saved
                    leftorright = other.leftorright
                    movedirection = other.movedirection
                    helpthere = other.helpthere
                    helpprogress = other.helpprogress
                    progress = 1
                }
            }
            else
            {
                with (instance_create(960, y, obj_pl_gear))
                {
                    saved = other.saved
                    leftorright = other.leftorright
                    movedirection = other.movedirection
                    helpthere = other.helpthere
                    helpprogress = other.helpprogress
                    progress = 1
                }
            }
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
        if (extra < 4)
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

