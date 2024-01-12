if (progress == 1)
{
    image_angle = point_direction(x, y, global.soulxposition, global.soulyposition)
    image_index = 1
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
        if instance_exists(obj_pl_arrow)
        {
            with (obj_pl_arrow)
                saved = 1
        }
    }
}

