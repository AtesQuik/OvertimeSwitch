if instance_exists(pyroweaponparent)
{
    with (pyroweaponparent)
        instance_destroy()
}
if instance_exists(pyroattackparent)
{
    with (pyroattackparent)
        instance_destroy()
}
if (whiteprogress == 0)
{
    if (whiteness < 1)
        whiteness += 0.01
    else
    {
        whiteprogress = 1
        alarm[0] = 60
    }
}
if (whiteprogress == 2)
{
    if (blackness2 < 1)
        blackness2 += 0.02
    else
    {
        whiteprogress = 3
        alarm[1] = 60
    }
}
if (whiteprogress == 4)
{
    whiteprogress = 5
    alarm[2] = 120
}
if (whiteprogress == 6)
    room_goto(rm_pl_finalpyro)

