if (progress == 0)
{
    if place_meeting(x, y, obj_pl_evade_soul)
    {
        if (activated == 0)
            activated = 1
        if (activated == 1)
        {
            if keyboard_check_pressed(global.actionkey)
            {
                if (akimbo == 0)
                {
                    with (obj_pl_pyro_battle)
                        progress = 1
                }
                if (akimbo == 1)
                {
                    with (obj_pl_pyro_battle)
                    {
                        if (akimboprogress == 0)
                            akimboprogress = 1
                        if (akimboprogress == 4)
                            akimboprogress = 5
                        alarm[9] = 150
                    }
                }
                instance_destroy()
            }
        }
    }
    else
        activated = 0
}

