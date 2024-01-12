var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Sven shatters to the floor."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(6, 10))
        global.enemieskilled += 1
        if (global.enemiestokill > 0)
            global.enemiesleft -= 1
    }
}
if ((sparemeter <= 0 || enemyhealth < 2) && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        if (enemyhealth < 2)
            global.battleapproachstring = "* Sven realizes he can only#  complain when he's alive,#  so he spares you."
        else
            global.battleapproachstring = "* Sven's grin is as bright as#  his armor now."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Sven is now happily working#  as a museum exhibit."
            global.cashyouwillget += cashreceive
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
        }
    }
}
script_execute(scr_taking_damage)
script_execute(scr_sparemeter_limit)
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && (!instance_exists(obj_sven_saw_hor)) && (!instance_exists(obj_sven_saw_hor2)))
{
    attacking = 1
    if (global.enemyamount == 1)
    {
        with (instance_create(54, 96, obj_sven_saw_vert))
        {
            damagedone = other.enemyattack
            image_index = 0
        }
        with (instance_create(266, 224, obj_sven_saw_vert))
        {
            damagedone = other.enemyattack
            image_index = 1
        }
        alarm[3] = global.evadetime
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            with (instance_create(80, 208, obj_sven_saw_hor2))
            {
                damagedone = other.enemyattack
                image_index = 0
                spd = 1
            }
            with (instance_create(240, 208, obj_sven_saw_hor2))
            {
                damagedone = other.enemyattack
                image_index = 1
                spd = -1
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(54, 96, obj_sven_saw_vert))
            {
                damagedone = other.enemyattack
                image_index = 0
            }
            with (instance_create(266, 224, obj_sven_saw_vert))
            {
                damagedone = other.enemyattack
                image_index = 1
            }
            alarm[3] = global.evadetime
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            with (instance_create(80, 208, obj_sven_saw_hor2))
            {
                damagedone = other.enemyattack
                image_index = 0
                spd = 1
            }
            with (instance_create(240, 208, obj_sven_saw_hor2))
            {
                damagedone = other.enemyattack
                image_index = 1
                spd = -1
            }
            alarm[3] = global.evadetime
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            with (instance_create(54, 96, obj_sven_saw_vert))
            {
                damagedone = other.enemyattack
                image_index = 0
            }
            with (instance_create(266, 224, obj_sven_saw_vert))
            {
                damagedone = other.enemyattack
                image_index = 1
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(80, 208, obj_sven_saw_hor2))
            {
                damagedone = other.enemyattack
                image_index = 0
                spd = 1
            }
            with (instance_create(240, 208, obj_sven_saw_hor2))
            {
                damagedone = other.enemyattack
                image_index = 1
                spd = -1
            }
            alarm[3] = global.evadetime
        }
    }
}
scr_enemy_names()
scr_enemy_waves_and_silly()
scr_enemy_death_transparency()
__b__ = action_if_object(101, 0, 0)
if (!__b__)
{
    __b__ = action_if_object(100, 0, 0)
    if (!__b__)
    {
        __b__ = action_if_object(112, 0, 0)
        if __b__
            scr_enemy_set_act_names()
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
                sparemeter -= 5
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    if (sparemeter == 10)
                    {
                        global.battleapproachstring = "* Sven has calmed down#  a bit."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You use a broom to#  sweep off all the dirt#  you put on Sven."
                        }
                    }
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* Even though you can't see#  his face, Sven appears to#  smile."
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
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* Sven admires himself in his#  shiny armor."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* Your hands slip off of#  Sven's armor, as it's#  already clean."
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
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

