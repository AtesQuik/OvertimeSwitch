action_set_alarm(5, 0)
if (bulletspd == 0)
{
    with (instance_create((x + bulletx), 70, obj_misha_bullet))
        damagedone = other.damagedone
    with (instance_create((x - bulletx), 75, obj_misha_bullet))
        damagedone = other.damagedone
}
else
{
    with (instance_create((x + bulletx), 70, obj_misha_bullet))
    {
        spd = 5
        damagedone = other.damagedone
    }
    with (instance_create((x - bulletx), 75, obj_misha_bullet))
    {
        spd = 5
        damagedone = other.damagedone
    }
}

