action_set_alarm(10, 0)
if (gundirection == 0)
{
    with (instance_create(x, y, obj_sani_needle))
    {
        damagedone = other.dmg
        dir = 0
    }
}
if (gundirection == 1)
{
    with (instance_create(x, y, obj_sani_needle))
    {
        damagedone = other.dmg
        dir = 1
    }
}

