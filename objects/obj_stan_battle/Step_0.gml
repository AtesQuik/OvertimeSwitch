var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* In a single, visceral#  instant, Stan was#  obliterated."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(18, 22))
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
            global.battleapproachstring = "* Stan is wondering why#  he is bleeding."
        else
            global.battleapproachstring = "* And Stan...was happy."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Stan is completely unsure#  how he was able to sign#  that contract."
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
        if (attacktype == 1 && (!instance_exists(obj_stan_question)))
        {
            attacktype = choose(1, 2)
            with (instance_create(70, 130, obj_stan_question))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(250, 180, obj_stan_question))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        if (attacktype == 2 && (!instance_exists(obj_stan_question)))
        {
            attacktype = choose(1, 2)
            with (instance_create(70, 180, obj_stan_question))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(250, 130, obj_stan_question))
            {
                spd = 2
                damagedone = other.enemyattack
            }
        }
        alarm[3] = global.evadetime
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            if (attacktype == 1 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
            }
            if (attacktype == 2 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
            }
            alarm[3] = global.evadetime
        }
        else
        {
            if (attacktype == 1 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
            }
            if (attacktype == 2 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
            }
            alarm[3] = global.evadetime
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            if (attacktype == 1 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
            }
            if (attacktype == 2 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
            }
            alarm[3] = global.evadetime
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            if (attacktype == 1 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
            }
            if (attacktype == 2 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
            }
            alarm[3] = global.evadetime
        }
        else
        {
            if (attacktype == 1 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
            }
            if (attacktype == 2 && (!instance_exists(obj_stan_question)))
            {
                attacktype = choose(1, 2)
                with (instance_create(70, 180, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(250, 130, obj_stan_question))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
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
                global.battleapproachstring = "* Stan is still very much#  confused."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                global.battleapproachstring = "* Stan has already forgotten#  that someone tapped on#  his shoulder."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You gently tap on Stan's#  shoulder. He wonders who#  could have done that."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                sparemeter -= 5
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* Stan is happy that someone#  finally tells him what#  he's supposed to do."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You tell Stan to stop#  attacking. He considers#  this a reasonable demand."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You tell Stan to give up.#* He likes being told what to#  do and wants to get hired."
                        }
                    }
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* It was not knowledge or#  even power that Stan was#  seeking, but happiness."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Since you have no more#  orders for Stan right now,#  you'd just confuse him."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                global.battleapproachstring = "* Stan is already used to#  things not making sense#  to him."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You tell Stan a paradox,#  but he's way too confused#  already."
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

