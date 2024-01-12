action_set_alarm(choose(5, 6, 7), 0)
if (gundirection == 0)
{
    with (instance_create(340, y, obj_sani_needle))
    {
        damagedone = other.dmg
        dir = -1
        image_xscale = 1
    }
}
if (gundirection == 1)
{
    with (instance_create(-20, y, obj_sani_needle))
    {
        damagedone = other.dmg
        dir = 1
        image_xscale = -1
    }
}

