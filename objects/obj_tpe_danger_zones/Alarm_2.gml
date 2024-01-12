if (zones == 1)
{
    alarm[2] = 5
    if (zonechoice == 0)
    {
        with (instance_create(irandom_range(150, 170), 250, obj_tpe_misha_bullet))
        {
            spd = 10
            damagedone = other.damagedone
        }
        with (instance_create(irandom_range(175, 195), 250, obj_tpe_misha_bullet))
        {
            spd = 10
            damagedone = other.damagedone
        }
    }
    if (zonechoice == 1)
    {
        with (instance_create(irandom_range(125, 145), 250, obj_tpe_misha_bullet))
        {
            spd = 10
            damagedone = other.damagedone
        }
        with (instance_create(irandom_range(175, 195), 250, obj_tpe_misha_bullet))
        {
            spd = 10
            damagedone = other.damagedone
        }
    }
    if (zonechoice == 2)
    {
        with (instance_create(irandom_range(150, 170), 250, obj_tpe_misha_bullet))
        {
            spd = 10
            damagedone = other.damagedone
        }
        with (instance_create(irandom_range(125, 145), 250, obj_tpe_misha_bullet))
        {
            spd = 10
            damagedone = other.damagedone
        }
    }
}

