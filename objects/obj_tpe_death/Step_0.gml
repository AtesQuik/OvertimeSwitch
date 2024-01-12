if (deathprogress < 6)
{
    if instance_exists(obj_tpe_gunsnmercs)
    {
        with (obj_tpe_gunsnmercs)
            counter = 0
    }
}
if (deathprogress == 0)
{
    global.soultype = 0
    deathprogress = 1
    alarm[0] = 30
}
if (deathprogress == 3)
    POS += 0.5
if (deathprogress == 4)
{
    if (whitescreen < 1)
        whitescreen += 0.05
    else
    {
        deathprogress = 5
        alarm[2] = 30
    }
}
if (deathprogress == 6)
{
    if (whitescreen > 0)
        whitescreen -= 0.1
    else
        instance_destroy()
}

