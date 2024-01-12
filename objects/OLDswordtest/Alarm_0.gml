action_set_alarm(30, 0)
if (randomchance == 0)
{
    with (instance_create(320, 160, obj_tavish_swordpiece))
    {
        spd = 3
        sdirection = 3
    }
}
if (randomchance == 1)
{
    with (instance_create(160, 0, obj_tavish_swordpiece))
    {
        spd = 3
        sdirection = 0
    }
}
if (randomchance == 2)
{
    with (instance_create(0, 160, obj_tavish_swordpiece))
    {
        spd = 3
        sdirection = 1
    }
}
randomchance = choose(0, 1, 2)

