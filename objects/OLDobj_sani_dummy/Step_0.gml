var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    global.battleapproachstring = "* Dummy has been shot. Ow."
    global.xpyouwillget += xpreceive
    global.cashyouwillget += cashreceive
    global.dummykilled = 1
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        instance_create(x, y, obj_enemy_down)
        instance_create(x, y, obj_spare_effect)
    }
}
if (sparemeter <= 0 && enemyhealth > 0)
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        global.battleapproachstring = "* Dummy can now be " + "\"" + "hired" + "\"" + "."
        instance_create(x, y, obj_enemy_spareable)
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* The dummy is dead(?)"
            global.cashyouwillget += cashreceive
            global.dummyhired = 1
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
        }
    }
}
if place_meeting(x, y, obj_damaging_enemy)
{
    enemyhealth -= global.enemydamage
    if (enemyhurt == 0)
    {
        enemyhurt = 1
        alarm[0] = 5
    }
}
if place_meeting(x, y, obj_enemy1_checkup)
    global.battleenemy1 = enemyname
if place_meeting(x, y, obj_enemy2_checkup)
    global.battleenemy2 = enemyname
if place_meeting(x, y, obj_enemy3_checkup)
    global.battleenemy3 = enemyname
if (place_meeting(x, y, obj_sparewave) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0)
    alarm[5] = 1
if (place_meeting(x, y, obj_itemwave) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0)
    alarm[5] = 1
__b__ = action_if_object(101, 0, 0)
if (!__b__)
{
    __b__ = action_if_variable(enemyhealth, 0, 2)
    if __b__
    {
        __b__ = action_if_object(112, 0, 0)
        if __b__
        {
            global.act1 = act1
            global.act2 = act2
            global.act3 = act3
            global.act4 = act4
        }
        if (global.isacting == 1 && waitingfortext == 0 && place_meeting(x, y, obj_youact))
        {
            waitingfortext = 1
            with (obj_youact)
                instance_destroy()
            if (global.actchoice < 1)
            {
                global.battleapproachstring = "* Dummy was inspected."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                sparemeter -= 10
                global.battleapproachstring = "* Dummy can't talk."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You talk to the dummy.#  Sani looks happy that#  you didn't use violence."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                sparemeter -= 10
                global.battleapproachstring = "* Dummy doesn't feel joy."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You tell the dummy that it#  looks nice. Sani begins to#  blush."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                sparemeter -= 10
                global.battleapproachstring = "* Dummy doesn't feel sadness."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You insult the Dummy.#  Sani looks at you funny."
                    }
                }
            }
        }
        if (waitingfortext == 1)
        {
            if (!instance_exists(obj_text_box_battle))
            {
                thisone = 0
                global.isacting = 0
                waitingfortext = 0
                alarm[5] = 1
            }
        }
    }
}
action_set_relative(0)

