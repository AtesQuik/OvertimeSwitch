var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Physical Physician's widow#  will be sent a gift card#  for the Mann Co. Store."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(27, 30))
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
            global.battleapproachstring = "* Physical Physician's hazmat#  suit warns him that his#  health is dangerously low."
        else
            global.battleapproachstring = "* A tear of joy rolls down#  Physical Physician's cheek."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Physical Physician was#  made an interesting offer#  for his services."
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
        if (attacktype == 1)
        {
            with (instance_create(210, 160, obj_physician_crowbar))
            {
                spd = 4
                damagedone = other.enemyattack
                alarm[0] = 30
            }
            with (instance_create(110, 160, obj_physician_crowbar))
            {
                spd = 4
                damagedone = other.enemyattack
                alarm[0] = 75
            }
        }
        if (attacktype == 2)
        {
            with (instance_create(210, 160, obj_physician_crowbar))
            {
                spd = 4
                damagedone = other.enemyattack
                alarm[0] = 75
            }
            with (instance_create(110, 160, obj_physician_crowbar))
            {
                spd = 4
                damagedone = other.enemyattack
                alarm[0] = 30
            }
        }
        alarm[3] = global.evadetime
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            with (instance_create(210, 160, obj_physician_crowbar))
            {
                spd = 3
                damagedone = other.enemyattack
                alarm[0] = 30
            }
            alarm[3] = global.evadetime
        }
        else
        {
            if (attacktype == 1)
            {
                with (instance_create(210, 160, obj_physician_crowbar))
                {
                    spd = 4
                    damagedone = other.enemyattack
                    alarm[0] = 30
                }
                with (instance_create(110, 160, obj_physician_crowbar))
                {
                    spd = 4
                    damagedone = other.enemyattack
                    alarm[0] = 75
                }
            }
            if (attacktype == 2)
            {
                with (instance_create(210, 160, obj_physician_crowbar))
                {
                    spd = 4
                    damagedone = other.enemyattack
                    alarm[0] = 75
                }
                with (instance_create(110, 160, obj_physician_crowbar))
                {
                    spd = 4
                    damagedone = other.enemyattack
                    alarm[0] = 30
                }
            }
            alarm[3] = global.evadetime
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            with (instance_create(210, 160, obj_physician_crowbar))
            {
                spd = 3
                damagedone = other.enemyattack
                alarm[0] = 30
            }
            alarm[3] = global.evadetime
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            if (attacktype == 1)
            {
                with (instance_create(210, 160, obj_physician_crowbar))
                {
                    spd = 4
                    damagedone = other.enemyattack
                    alarm[0] = 30
                }
                with (instance_create(110, 160, obj_physician_crowbar))
                {
                    spd = 4
                    damagedone = other.enemyattack
                    alarm[0] = 75
                }
            }
            if (attacktype == 2)
            {
                with (instance_create(210, 160, obj_physician_crowbar))
                {
                    spd = 4
                    damagedone = other.enemyattack
                    alarm[0] = 75
                }
                with (instance_create(110, 160, obj_physician_crowbar))
                {
                    spd = 4
                    damagedone = other.enemyattack
                    alarm[0] = 30
                }
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(210, 160, obj_physician_crowbar))
            {
                spd = 3
                damagedone = other.enemyattack
                alarm[0] = 30
            }
            alarm[3] = global.evadetime
        }
    }
}
if (goingdown == 0)
{
    if (waiting < 10)
        waiting += 0.25
    else
    {
        wasattop = 1
        if (shaking < 2)
            shaking += 0.1
        if (shaking >= 2 && shaking < 6)
            shaking += 0.2
        if (shaking >= 6 && shaking < 12)
            shaking += 0.4
        if (shaking >= 12)
            goingdown = 1
    }
}
else if (waiting > -10)
    waiting -= 0.5
else
{
    if (shaking > 8 && shaking <= 12)
        shaking -= 1
    if (shaking > 0 && shaking <= 8)
        shaking -= 2
    if (shaking <= 0)
        goingdown = 0
}
if (waiting < -4 && wasattop == 1 && goingdown == 0)
{
    shakex = random_range(-1, 1)
    shakey = random_range(-1, 1)
}
else
{
    shakex = 0
    shakey = 0
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
                global.battleapproachstring = "* Physical Physician thinks#  you're checking him out,#  so he points to his ring."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                global.battleapproachstring = "* Physical Physiciant is#  happy that his suit fits#  his muscles perfectly."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You flex your muscles.#* Physical Physician and his#  muscles are not impressed."
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
                        global.battleapproachstring = "* Physical Physician and you#  throw a ball back and#  forth. His heart warms up."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You ask Physical Physician#  if he'd like to play a game#  of catch. He's excited."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You decide to play another#  round. His fatherly#  instincts kick back in."
                        }
                    }
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* Physical Physician is#  indulging in reminiscences."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Physical Physician is lost#  in thought and isn't paying#  much attention anymore."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                global.battleapproachstring = "* Physical Physician is used#  to behaviour like this."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = choose("* You tell Physical Physician#  that he's a tiny baby.#* He just rolls his eyes.", "* You ape Physical Physician.#* He giggles a little and#  pats your head.")
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

