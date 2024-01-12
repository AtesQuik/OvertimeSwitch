if (global.attacking == 0)
{
    if (miss == 2)
        script_execute(scr_shooting)
    else
    {
        if (movedirection == 0)
        {
            if (x < 301)
                x += spd
            else
                script_execute(scr_shooting)
        }
        if (movedirection == 1)
        {
            if (x > 19)
                x -= spd
            else
                script_execute(scr_shooting)
        }
    }
}
if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)) && global.attacking == 0)
    script_execute(scr_shooting)
if (miss == 1)
    global.enemydamage = 0
else
{
    if ((x > 0 && x <= 32) || (x < 320 && x >= 288))
        global.enemydamage = 0
    if ((x > 32 && x <= 53) || (x < 288 && x >= 264))
        global.enemydamage = global.minimaldamage
    if ((x > 53 && x <= 110) || (x < 264 && x >= 208))
        global.enemydamage = global.mediumdamage
    if ((x > 110 && x <= 152) || (x < 208 && x >= 166))
        global.enemydamage = global.normaldamage
    if (x > 152 && x <= 166)
        global.enemydamage = global.maxdamage
}

