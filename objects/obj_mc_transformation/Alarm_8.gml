if (progress < 13)
{
    with (instance_create((160 + irandom_range(-4, 4)), 60, obj_mc_scoutsmoke))
        spd = -0.25
    with (instance_create((160 + irandom_range(-4, 4)), 60, obj_mc_scoutsmoke))
        spd = 0.25
    alarm[8] = 30
}

