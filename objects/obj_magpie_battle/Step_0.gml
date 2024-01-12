var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Mobster Magpie is now#  sleeping with the fishes."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(12, 15))
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
            global.battleapproachstring = "* Mobster Magpie is seeing#  visions of his summers#  in the Toscana."
        else
            global.battleapproachstring = "* Mobster Magpie is getting#  his bags with dollar signs#  on them."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Mobstler Magpie is now#  transporting rolled-up#  rugs for a living."
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
        with (instance_create(120, 104, obj_magpie_feather))
        {
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(160, 104, obj_magpie_feather))
        {
            spd = 3
            damagedone = other.enemyattack
        }
        with (instance_create(200, 104, obj_magpie_feather))
        {
            spd = 3
            damagedone = other.enemyattack
        }
        alarm[3] = global.evadetime
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            with (instance_create(120, 104, obj_magpie_feather))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(160, 104, obj_magpie_feather))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(200, 104, obj_magpie_feather))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(120, 104, obj_magpie_feather))
            {
                spd = 3
                damagedone = other.enemyattack
            }
            with (instance_create(160, 104, obj_magpie_feather))
            {
                spd = 3
                damagedone = other.enemyattack
            }
            with (instance_create(200, 104, obj_magpie_feather))
            {
                spd = 3
                damagedone = other.enemyattack
            }
            alarm[3] = global.evadetime
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            with (instance_create(120, 104, obj_magpie_feather))
            {
                spd = 1
                damagedone = other.enemyattack
            }
            with (instance_create(160, 104, obj_magpie_feather))
            {
                spd = 1
                damagedone = other.enemyattack
            }
            with (instance_create(200, 104, obj_magpie_feather))
            {
                spd = 1
                damagedone = other.enemyattack
            }
            alarm[3] = global.evadetime
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            with (instance_create(120, 104, obj_magpie_feather))
            {
                spd = 3
                damagedone = other.enemyattack
            }
            with (instance_create(160, 104, obj_magpie_feather))
            {
                spd = 3
                damagedone = other.enemyattack
            }
            with (instance_create(200, 104, obj_magpie_feather))
            {
                spd = 3
                damagedone = other.enemyattack
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(120, 104, obj_magpie_feather))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(160, 104, obj_magpie_feather))
            {
                spd = 2
                damagedone = other.enemyattack
            }
            with (instance_create(200, 104, obj_magpie_feather))
            {
                spd = 2
                damagedone = other.enemyattack
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
                global.battleapproachstring = "* Mobster Magpie is sweating#  now that you know his#  background."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                global.battleapproachstring = "* Mobster Magpie only eats#  seeds how momma used to#  make them."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You offer some bird seeds#  to Mobster Magpie.#* He's not hungry."
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
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* Mobster Magpie is visibly#  excited by this offer."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You ask Mobster Magpie#  if he wants to be part of#  the family."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You make Mobster Magpie#  an offer he can't refuse."
                        }
                    }
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* Mobster Magpie is#  getting his unsuspicious#  violin case."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You consider offering a#  handshake, but you realise#  he only has wings."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                global.battleapproachstring = "* Mobster Magpie mentions#  he's bought the police."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You call the police.#* Oh wait, you can't.#* Did you forget already?"
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

