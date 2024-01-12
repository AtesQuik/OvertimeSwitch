var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Dummy has been shot. Ow."
        global.dummykilled = 1
    }
}
if ((sparemeter <= 0 || enemyhealth < 2) && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        if (enemyhealth < 2)
            global.battleapproachstring = "* The Dummy's health#  is low, which means#  he can be spared."
        else
            global.battleapproachstring = "* Dummy can now be " + "\"" + "hired" + "\"" + "."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* The dummy is gone."
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.dummyhired = 1
        }
    }
}
script_execute(scr_taking_damage)
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
                global.battleapproachstring = "* Dummy was inspected."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                sparemeter -= 10
                actchoice = 1
                global.battleapproachstring = "* Dummy can't talk."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You talk to the dummy.#* Sani looks happy that#  you didn't use violence."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                sparemeter -= 10
                actchoice = 2
                global.battleapproachstring = "* Dummy doesn't feel joy."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You tell the dummy that it#  looks nice. Sani begins to#  blush."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                sparemeter -= 10
                actchoice = 3
                global.battleapproachstring = "* Dummy can't get mad."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You insult the Dummy.#  Sani looks at you funny."
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

