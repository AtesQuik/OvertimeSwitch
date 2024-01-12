scr_no_more_actchoice()
if (!instance_exists(obj_box_to_evade))
    instance_create(0, 0, obj_box_to_evade)
if (attackchance == 1)
    global.evadetime = 420
if (attackchance == 3)
{
    if (enemyhealth > 50)
        global.evadetime = 300
    if (enemyhealth > 17 && enemyhealth <= 50)
        global.evadetime = 390
    if (enemyhealth <= 17)
        global.evadetime = 540
}

