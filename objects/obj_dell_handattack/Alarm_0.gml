if instance_exists(obj_evade_soul)
{
    global.soultype = 5
    if (handdirection == 0)
        obj_evade_soul.throwdirection = 1
    if (handdirection == 1)
        obj_evade_soul.throwdirection = 2
    if (handdirection == 2)
        obj_evade_soul.throwdirection = 3
    if (handdirection == 3)
        obj_evade_soul.throwdirection = 4
}

