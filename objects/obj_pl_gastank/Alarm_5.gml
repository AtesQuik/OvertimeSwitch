alarm[6] = 15
if (tankdir == 0)
{
    with (instance_create(x, y, obj_pl_rocket))
        leftorright = 0
}
else
{
    with (instance_create(x, y, obj_pl_rocket))
        leftorright = 1
}

