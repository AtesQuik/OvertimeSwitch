var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    global.battleapproachstring = "* Sven shatters to the floor."
    global.xpyouwillget += xpreceive
    global.cashyouwillget += cashreceive
    global.enemieskilled += 1
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
        global.battleapproachstring = "* Sven's grin is as bright as#  his armor now."
        instance_create(x, y, obj_enemy_spareable)
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Sven is now happily working#  as a museum exhibit."
            global.cashyouwillget += cashreceive
            global.enemiesspared += 1
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
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && enemyhealth > 0 && (!(place_meeting(x, y, obj_enemy_spared))) && (!instance_exists(obj_sven_saw)))
{
    if (global.enemyamount == 1)
        instance_create(176, 96, obj_sven_saw)
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
            instance_create(176, 80, obj_sven_saw)
        else
            instance_create(176, 96, obj_sven_saw)
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
            instance_create(176, 64, obj_sven_saw)
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
            instance_create(176, 96, obj_sven_saw)
        else
            instance_create(176, 80, obj_sven_saw)
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
                actchoice = 4
                global.battleapproachstring = "* Sven thinks you're#  judging him for being#  dirty."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                global.battleapproachstring = "* Sven is still angry."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = choose("* You read a passage from#  the little book of calm.#* But Sven didn't listen.", "* You try to calm Sven down.#* He ignores you and tries to#  dust off his shoulders.")
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                sparemeter -= 5
                if (sparemeter == 10)
                    global.battleapproachstring = "* Sven has calmed down#  a bit."
                if (sparemeter == 5)
                    global.battleapproachstring = "* Even though you can't see#  his face, Sven appears to#  smile."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    if (sparemeter == 10)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You use a broom to#  sweep off all the dirt#  you put on Sven."
                        }
                    }
                    if (sparemeter == 5)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You use a wet rag to clean#  Sven's armor until you can#  see your face in it."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You put wax on the rag and#  polish Sven's armor until#  it's shiny again."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (sparemeter < 15 && sparemeter != 0)
                    sparemeter += 5
                global.battleapproachstring = "* Sven seems even more upset."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You pick up some dirt from#  the ground and smear it all#  over Sven."
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

