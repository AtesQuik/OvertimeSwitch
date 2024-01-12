var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        if instance_exists(obj_music_player)
        {
            with (obj_music_player)
                musictrack = 118
        }
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Greater Birb is no more."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(15, 20))
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
            global.battleapproachstring = "* Greater Birb has#  stopped chirping."
        else
            global.battleapproachstring = "* Greater Birb is singing#  the most beautiful song#  you have ever heard."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            if instance_exists(obj_music_player)
            {
                with (obj_music_player)
                    musictrack = 118
            }
            global.battleapproachstring = "* Greater Birb...#* ...just hopped away."
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
    if (!instance_exists(obj_small_birb))
    {
        with (instance_create(160, 178, obj_small_birb))
            damagedone = other.enemyattack
        alarm[3] = global.evadetime
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
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                if (!instance_exists(obj_text_box_battle))
                {
                    if (sparemeter == 15)
                    {
                        global.battleapproachstring = "* You have the entire#  attention of Greater Birb."
                        sparemeter -= 5
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You whistle a song for#  Greater Birb.#* He seems curious!"
                        }
                    }
                    else if (sparemeter < 15 && sparemeter > 1)
                    {
                        global.battleapproachstring = "* Perhaps you could offer#  Greater Birb something..."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You whistle again.#* Greater Birb is already#  paying attention."
                        }
                    }
                    else if (sparemeter <= 0)
                    {
                        global.battleapproachstring = "* Greater Birb is chirping happily."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Greater Birb is already#  happy."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    if (sparemeter == 15)
                    {
                        global.battleapproachstring = "* Maybe you can get Greater#  Birb's attention somehow..."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You throw some seeds down,#  but Greater Bird isn't#  paying attention yet."
                        }
                    }
                    else if (sparemeter == 10)
                    {
                        global.battleapproachstring = "* Greater Birb is dirty#  because he's a messy eater."
                        sparemeter -= 5
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You throw some bird seeds#  on the floor.#* Greater Birb loves these!"
                        }
                    }
                    else if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* Perhaps Greater Birb#  would like a nice bath?"
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You throw more seeds, but#  Greater Birb is not#  hungry anymore."
                        }
                    }
                    else if (sparemeter <= 0)
                    {
                        global.battleapproachstring = "* Greater Birb is chirping happily."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Greater Birb is already#  happy."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    if (sparemeter == 15)
                    {
                        global.battleapproachstring = "* Maybe you can get Greater#  Birb's attention somehow..."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You offer a bath, but#  Greater Birb is distracted#  by something else."
                        }
                    }
                    else if (sparemeter == 10)
                    {
                        global.battleapproachstring = "* Perhaps you could offer#  Greater Birb a meal..."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You offer a bath, but#  Greater Birb never bathes#  before eating."
                        }
                    }
                    else if (sparemeter == 5)
                    {
                        sparemeter -= 5
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You give Greater Birb#  a bird bath.#* He splashes happily."
                        }
                    }
                    else if (sparemeter <= 0)
                    {
                        global.battleapproachstring = "* Greater Birb is chirping happily."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Greater Birb is already#  happy."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

