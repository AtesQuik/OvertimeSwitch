scr_no_more_attacking()
attackchance = choose(1, 2)
if (global.genocide == 0)
    hurtheads = choose(1, 2, 3, 6, 7, 8, 10)
else
    hurtheads = 11
if (global.genocide == 0 && (!instance_exists(obj_evade_soul)) && (!instance_exists(obj_box_to_evade)) && (!instance_exists(obj_evade_ground)) && nochange == 1)
{
    nochange = 0
    alarm[11] = 15
}

