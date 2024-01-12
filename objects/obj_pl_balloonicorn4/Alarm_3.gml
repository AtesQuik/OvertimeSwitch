if (saved == 0)
    alarm[2] = 300
if (actnow == 1)
{
    actnow = 2
    with (instance_create(320, -120, obj_pl_dynamite1))
    {
        act = 1
        saved = other.saved
    }
}
else
{
    with (instance_create(320, -120, obj_pl_dynamite1))
        saved = other.saved
}

