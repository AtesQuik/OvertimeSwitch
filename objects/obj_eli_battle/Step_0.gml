var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        global.elidown = 1
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Eli is dead.#* Misha can't be healed#  any longer."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += 0
        if instance_exists(obj_misha_battle)
        {
            with (obj_misha_battle)
                enemyattack = 5
        }
    }
}
if ((sparemeter <= 0 || enemyhealth < 2) && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        if (enemyhealth < 2)
            global.battleapproachstring = "* Ro-buddy thinks it's better to live and spares you."
        else
            global.battleapproachstring = "* Ro-buddy is happy now and can be spared."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.cashyouwillget += cashreceive
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
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
        global.enemydamage = global.betrayaldamage
        enemyhealth = 0
    }
}
script_execute(scr_sparemeter_limit)
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
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You offer Eli to do an#  experiment with you, but#  he's doing that already."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You call Eli a backstabbing#  scumbag, but he couldn't#  care less."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You threaten to shoot Eli,#  but he's too busy healing,#  so he doesn't listen."
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

