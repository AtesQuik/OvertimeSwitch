if (helpthere == 0 && instance_exists(obj_pl_helpbox))
{
    helpthere = 1
    alarm[0] = 120
}
if (progress == 1)
{
    if (extra < 3)
        extra += 0.05
    extrax = random_range((-extra), extra)
    extray = random_range((-extra), extra)
}
if (helpthere == 1 && (!instance_exists(obj_pl_helpbox)))
    instance_destroy()

