var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Crying Cat collapses in her#  own tears."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(5, 7))
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
            global.battleapproachstring = "* Crying Cat shivers and#  refuses to look at you."
        else
            global.battleapproachstring = "* Crying Cat purrs so loud,#  the walls are beginning to#  shake."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Crying Cat was hired as a#  mice hunter for an old#  lady."
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
        instance_create((global.soulxposition + random_range(-24, 24)), 96, obj_ccat_tear)
        alarm[3] = 8
        with (obj_ccat_tear)
        {
            damagedone = other.enemyattack
            spd = choose(2, 2)
        }
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            instance_create((global.soulxposition + random_range(-24, 24)), 96, obj_ccat_tear)
            alarm[3] = 10
            with (obj_ccat_tear)
            {
                damagedone = other.enemyattack
                spd = choose(2, 2)
            }
        }
        else
        {
            instance_create((global.soulxposition + random_range(-24, 24)), 96, obj_ccat_tear)
            alarm[3] = 8
            with (obj_ccat_tear)
            {
                damagedone = other.enemyattack
                spd = choose(2, 2)
            }
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            instance_create((global.soulxposition + random_range(-24, 24)), 96, obj_ccat_tear)
            alarm[3] = 12
            with (obj_ccat_tear)
            {
                damagedone = other.enemyattack
                spd = choose(2, 2)
            }
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            instance_create((global.soulxposition + random_range(-24, 24)), 96, obj_ccat_tear)
            alarm[3] = 8
            with (obj_ccat_tear)
            {
                damagedone = other.enemyattack
                spd = choose(2, 2)
            }
        }
        else
        {
            instance_create((global.soulxposition + random_range(-24, 24)), 96, obj_ccat_tear)
            alarm[3] = 10
            with (obj_ccat_tear)
            {
                damagedone = other.enemyattack
                spd = choose(2, 2)
            }
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
                global.battleapproachstring = "* Crying Cat looks at you#  with big, sad eyes."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                global.battleapproachstring = "* Crying Cat plays with#  a yarn ball for a bit,#  but it rolls away."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You make a bad cat pun.#  Crying Cat does not care#  for it."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                global.battleapproachstring = "* Crying Cat is wet from both#  the water and her tears."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You spray Crying Cat with#  a bottle of water. She does#  not even acknowledge it."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                sparemeter -= 5
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* Crying Cat's tears seem to#  be drying up."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You reach out and pet#  Crying Cat's head."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        global.battleapproachstring = "* Crying Cat purrs softly.#* Seems like she's happy!"
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You scratch Crying Cat#  behind the ears."
                        }
                    }
                    if (sparemeter < 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* Crying Cat bites your#  finger, but out of love.#* Enough petting."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

