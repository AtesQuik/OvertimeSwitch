if (leftorright == 0)
{
    if (y == 520)
        y = -40
    else
        y += spd
}
if (leftorright == 1)
{
    if (y == -40)
        y = 520
    else
        y -= spd
}
if (saved == 0)
{
    if (helpprogress == 0 && helpthere == 0 && instance_exists(obj_pl_helpbox))
    {
        helpthere = 1
        alarm[3] = 120
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
        if instance_exists(obj_pl_rpgrocket)
        {
            with (obj_pl_rpgrocket)
                saved = 1
        }
    }
}

