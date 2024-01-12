if (soulhit == 1)
    image_alpha = 0.5
else
    image_alpha = 1
if (global.battlemenuoffline == 1)
    instance_destroy()
if (instance_exists(obj_soul_battle_select) && instance_exists(obj_dell_extrasoul))
{
    with (obj_soul_battle_select)
    {
        if (soul_ypos == 0)
        {
            if (soul_bottomxpos == 0)
            {
                obj_dell_extrasoul.x = 24
                obj_dell_extrasoul.y = 226
            }
            if (soul_bottomxpos == 1)
            {
                obj_dell_extrasoul.x = 100
                obj_dell_extrasoul.y = 226
            }
            if (soul_bottomxpos == 2)
            {
                obj_dell_extrasoul.x = 180
                obj_dell_extrasoul.y = 226
            }
            if (soul_bottomxpos == 3)
            {
                obj_dell_extrasoul.x = 258
                obj_dell_extrasoul.y = 226
            }
        }
        else if (global.flee == 0)
        {
            obj_dell_extrasoul.x = (36 + (128 * soul_topxpos))
            obj_dell_extrasoul.y = (126 + (16 * soul_ypos))
        }
    }
}

