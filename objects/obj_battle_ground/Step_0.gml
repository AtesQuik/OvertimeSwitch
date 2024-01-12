if (global.attacking == 1 && waiting == 0)
{
    global.gunfired = 1
    waiting = 1
    alarm[0] = 10
}
if (targetthere == 0 && (!instance_exists(obj_wait_for_me)))
{
    targetthere = 1
    instance_create(x, y, obj_wait_for_me)
    if (targetdir == 0)
    {
        instance_create(16, 128, obj_target_choice)
        with (obj_target_choice)
            movedirection = 0
    }
    if (targetdir == 1)
    {
        instance_create(301, 128, obj_target_choice)
        with (obj_target_choice)
            movedirection = 1
    }
}

