if (saved == 1)
    speed = 5
if (startx < 320 && x > 740)
    instance_destroy()
if (startx > 320 && x < -100)
    instance_destroy()
if (starty < 240 && y > 580)
    instance_destroy()
if (starty > 240 && y < -100)
    instance_destroy()
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

