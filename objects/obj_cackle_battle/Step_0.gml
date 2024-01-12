var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Everything is so quiet now."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(16, 20))
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
            global.battleapproachstring = (("* " + string(other.enemyname)) + " is laughing#  even harder than before.")
        else
            global.battleapproachstring = (("* " + string(other.enemyname)) + " is happy that#  someone finally listened#  to its problems.")
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = (("* " + string(other.enemyname)) + " decides to#  become a psychiatrist, to#  listen to other people too.")
            global.cashyouwillget += cashreceive
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
        }
    }
}
script_execute(scr_taking_damage)
script_execute(scr_sparemeter_limit)
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))))
{
    attacking = 1
    if (global.enemyamount == 1)
    {
        with (instance_create(160, 128, obj_cackle_fire))
        {
            damagedone = other.enemyattack
            path_start(path_cackle_l, 3, path_action_stop, 0)
            path_start(path_cackle_r, 3, path_action_stop, 0)
        }
        alarm[3] = global.evadetime
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            with (instance_create(160, 128, obj_cackle_fire))
            {
                damagedone = other.enemyattack
                path_start(path_cackle_l, 2, path_action_stop, 0)
                path_start(path_cackle_r, 2, path_action_stop, 0)
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(160, 128, obj_cackle_fire))
            {
                damagedone = other.enemyattack
                path_start(path_cackle_l, 3, path_action_stop, 0)
                path_start(path_cackle_r, 3, path_action_stop, 0)
            }
            alarm[3] = global.evadetime
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            with (instance_create(160, 128, obj_cackle_fire))
            {
                damagedone = other.enemyattack
                path_start(path_cackle_l, 2, path_action_stop, 0)
                path_start(path_cackle_r, 2, path_action_stop, 0)
            }
            alarm[3] = global.evadetime
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            with (instance_create(160, 128, obj_cackle_fire))
            {
                damagedone = other.enemyattack
                path_start(path_cackle_l, 3, path_action_stop, 0)
                path_start(path_cackle_r, 3, path_action_stop, 0)
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(160, 128, obj_cackle_fire))
            {
                damagedone = other.enemyattack
                path_start(path_cackle_l, 2, path_action_stop, 0)
                path_start(path_cackle_r, 2, path_action_stop, 0)
            }
            alarm[3] = global.evadetime
        }
    }
}
if (upordown == 0)
{
    if (float < 1)
        float += 0.1
    if (float >= 1 && float < 3)
        float += 0.25
    if (float >= 3 && float < 6)
        float += 0.5
    if (float >= 6 && float < 8)
        float += 0.25
    if (float >= 8 && float < 9)
        float += 0.1
    if (float == 9)
        upordown = 1
}
else
{
    if (float > 8)
        float -= 0.1
    if (float > 6 && float <= 8)
        float -= 0.25
    if (float > 3 && float <= 6)
        float -= 0.5
    if (float > 1 && float <= 3)
        float -= 0.25
    if (float <= 1)
        float -= 0.1
    if (float == 0)
        upordown = 0
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
                global.battleapproachstring = (("* " + string(other.enemyname)) + "'s laughter is#  echoing in the dark caves.")
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                global.battleapproachstring = (("* " + string(other.enemyname)) + " is used to#  being frowned upon.")
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = ((("* You fiercely frown at#  " + string(other.enemyname)) + ". #") + "* It just keeps laughing.")
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                global.battleapproachstring = (("* " + string(other.enemyname)) + " continues#  laughing, and doesn't#  seem to stop.")
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = (("* You start laughing out#  loud. " + string(other.enemyname)) + " laughs#  back, but nothing changes.")
                    }
                }
            }
            if (global.actchoice == 3)
            {
                sparemeter -= 5
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = (("* " + string(other.enemyname)) + " stops laughing#  and begins to open up#  about its problems.")
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = (("* You sit on the floor and#  listen to " + string(other.enemyname)) + ".#  Its grimace fades.")
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = (("* You continue listening to#  what " + string(other.enemyname)) + " has#  to say.")
                        }
                    }
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = (("* " + string(other.enemyname)) + " is laughing#  because it's happy for the#  first time in a long while.")
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = (("* You listen more, but#  " + string(other.enemyname)) + " has nothing#  else to say right now.")
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

