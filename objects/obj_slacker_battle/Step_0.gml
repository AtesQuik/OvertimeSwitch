var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Ex-Slacker slacks and#  falls to the floor."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(20, 25))
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
            global.battleapproachstring = "* Ex-Slacker didn't turn his#  life around just to die so#  young, so he spares you."
        else
            global.battleapproachstring = "* Ex-Slacker is totally#  stoked to start working."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Ex-Slacker found#  his passion."
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
        with (instance_create(choose(90, 235), 115, obj_slacker_knife))
        {
            image_index = 0
            damagedone = other.enemyattack
            spd = 12
        }
        with (instance_create(choose(90, 235), 200, obj_slacker_knife))
        {
            image_index = 0
            damagedone = other.enemyattack
            spd = 12
        }
        alarm[3] = global.evadetime
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            with (instance_create(choose(90, 235), choose(115, 200), obj_slacker_knife))
            {
                image_index = 0
                damagedone = other.enemyattack
                spd = 8
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(choose(90, 235), 115, obj_slacker_knife))
            {
                image_index = 0
                damagedone = other.enemyattack
                spd = 12
            }
            with (instance_create(choose(90, 235), 200, obj_slacker_knife))
            {
                image_index = 0
                damagedone = other.enemyattack
                spd = 12
            }
            alarm[3] = global.evadetime
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            with (instance_create(choose(90, 235), choose(115, 200), obj_slacker_knife))
            {
                image_index = 0
                damagedone = other.enemyattack
                spd = 4
            }
            alarm[3] = global.evadetime
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            with (instance_create(choose(90, 235), 115, obj_slacker_knife))
            {
                image_index = 0
                damagedone = other.enemyattack
                spd = 12
            }
            with (instance_create(choose(90, 235), 200, obj_slacker_knife))
            {
                image_index = 0
                damagedone = other.enemyattack
                spd = 12
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(choose(90, 235), choose(115, 200), obj_slacker_knife))
            {
                image_index = 0
                damagedone = other.enemyattack
                spd = 8
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
                global.battleapproachstring = "* Ex-Slacker is very excited#  that you're taking a good#  look at him."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                global.battleapproachstring = "* Ex-Slacker is very eager#  to show you how much he#  has really changed."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You criticize Ex-Slacker's#  past of slacking, but he#  says it's all behind him."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                global.battleapproachstring = "* Ex-Slacker is way too keen#  to get hired by you, so he#  refuses to be ignored."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You try to ignore#  Ex-Slacker, but he gets#  in your way again."
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
                        global.battleapproachstring = "* Ex-Slacker's CV shows that#  he has a lot of important#  skills."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You decide to interview#  Ex-Slacker to see if he's#  fit for the job."
                        }
                    }
                    else if (sparemeter == 0)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Ex-Slacker's fighting#  skills impress you, so you#  say you will hire him."
                        }
                    }
                    else if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* Ex-Slacker has brought#  his own pen to sign the#  contract."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* The interview is over, all#  you can do now is sign the#  contract and shake hands."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

