if instance_exists(obj_evade_soul)
{
    if (turnedon == 1 && global.soulmoving == 1)
    {
        if (shootagain == 0)
        {
            shootagain = 1
            alarm[0] = 1
        }
    }
}
else
{
    alarm[0] = -1
    alarm[1] = -1
    alarm[2] = -1
}
if instance_exists(obj_evade_soul)
{
    global.soulxposition = obj_evade_soul.x
    global.soulyposition = obj_evade_soul.y
}

