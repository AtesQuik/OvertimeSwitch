boxesactivated = 0
boxamount = 0
if (global.puzzle2done == 1)
{
    instance_create(0, 0, obj_m_puzzledone)
    with (obj_m_puzzlebox)
        instance_destroy()
    with (obj_m_boxswitch)
        instance_create(x, y, obj_m_puzzlebox)
}

