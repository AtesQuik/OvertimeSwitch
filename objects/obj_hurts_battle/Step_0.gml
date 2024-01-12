var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.xpyouwillget += xpreceive
        global.cashyouwillget += 0
    }
}
if ((sparemeter <= 0 || enemyhealth < 2) && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        global.battleapproachstring = "* it hurt"
        enemyname = "it hurt"
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.cashyouwillget += 0
            instance_create(x, y, obj_enemy_spared)
        }
    }
}
if (place_meeting(x, y, obj_damaging_enemy) && enemyhurt == 0 && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (obj_damaging_enemy)
        instance_destroy()
    script_execute(scr_damage_numbers)
    if (global.enemydamage > 0)
    {
        audio_play_sound(snd_enemy_hurt, 1, false)
        enemyhurt = 1
        alarm[0] = 30
    }
}
script_execute(scr_sparemeter_limit)
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))))
{
    attacking = 1
    alarm[3] = global.evadetime
    with (instance_create(101, 164, obj_ithurts_blade))
        damagedone = other.enemyattack
    with (instance_create(219, 158, obj_ithurts_blade))
        damagedone = other.enemyattack
}
if (upordown == 0)
{
    if (shaking < 1)
        shaking += 0.1
    if (shaking >= 1 && shaking < 3)
        shaking += 0.25
    if (shaking >= 3 && shaking < 6)
        shaking += 0.5
    if (shaking >= 6 && shaking < 8)
        shaking += 0.25
    if (shaking >= 8 && shaking < 9)
        shaking += 0.1
    if (shaking == 9)
        upordown = 1
}
else
{
    if (shaking > 8)
        shaking -= 0.1
    if (shaking > 6 && shaking <= 8)
        shaking -= 0.25
    if (shaking > 3 && shaking <= 6)
        shaking -= 0.5
    if (shaking > 1 && shaking <= 3)
        shaking -= 0.25
    if (shaking <= 1)
        shaking -= 0.1
    if (shaking == 0)
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
                global.battleapproachstring = "* it hurts"
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                sparemeter -= 5
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    if (sparemeter == 10)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                    if (sparemeter == 5)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                    if (sparemeter < 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                sparemeter -= 5
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    if (sparemeter == 10)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                    if (sparemeter == 5)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                    if (sparemeter < 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                sparemeter -= 5
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    if (sparemeter == 10)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                    if (sparemeter == 5)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                    if (sparemeter < 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* it hurts"
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

