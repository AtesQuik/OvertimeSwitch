if (progress == 0)
{
    if (whitescreen < 1)
        whitescreen += 0.2
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    alarm[0] = 30
}
if (progress == 3)
{
    progress = 4
    with (instance_create((x - 6), (y - 49), obj_heavy_eye))
        flash = other.flash1
}
if (progress == 4 && (!instance_exists(obj_heavy_eye)))
{
    progress = 5
    with (instance_create((x + 2), (y - 49), obj_heavy_eye))
    {
        flash = other.flash2
        if (other.amount == 0)
            size = 1
    }
}
if (progress == 5 && (!instance_exists(obj_heavy_eye)))
{
    progress = 6
    if (amount > 0)
    {
        with (instance_create((x - 6), (y - 49), obj_heavy_eye))
        {
            flash = other.flash3
            if (other.amount == 1)
                size = 1
        }
    }
}
if (progress == 6 && (!instance_exists(obj_heavy_eye)))
{
    progress = 7
    if (amount > 1)
    {
        with (instance_create((x + 2), (y - 49), obj_heavy_eye))
        {
            flash = other.flash4
            if (other.amount == 2)
                size = 1
        }
    }
}
if (progress == 7 && (!instance_exists(obj_heavy_eye)))
{
    progress = 8
    alarm[1] = 15
}
if (progress == 9 && (!instance_exists(obj_misha_punch)))
{
    progress = 10
    alarm[2] = 5
}
if (progress == 11 && (!instance_exists(obj_misha_punch)))
{
    progress = 12
    if (amount > 0)
        alarm[3] = 5
    else
        progress = 15
}
if (progress == 13 && (!instance_exists(obj_misha_punch)))
{
    progress = 14
    if (amount > 1)
        alarm[4] = 5
    else
        progress = 15
}
if (progress == 15 && (!instance_exists(obj_misha_punch)))
{
    progress = 16
    alarm[5] = 30
}

