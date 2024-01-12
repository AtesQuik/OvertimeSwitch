var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Miniculus puts some coins#  on itself and then#  fades into nothingness."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(15, 18))
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
            global.battleapproachstring = "* Miniculus is having#  troubles keeping#  its lids open."
        else
            global.battleapproachstring = "* Miniculus gleefully#  blinks and rolls itself."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Miniculus disappears in#  a purple puff of smoke."
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
        with (instance_create(x, y, obj_miniculus_eye))
        {
            damagedone = other.enemyattack
            spd = 2
        }
        alarm[3] = global.evadetime
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            with (instance_create(x, y, obj_miniculus_eye))
            {
                damagedone = other.enemyattack
                spd = 2
                alarm[0] = 45
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(x, y, obj_miniculus_eye))
            {
                damagedone = other.enemyattack
                spd = 2
            }
            alarm[3] = global.evadetime
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            with (instance_create(x, y, obj_miniculus_eye))
            {
                damagedone = other.enemyattack
                spd = 2
                alarm[0] = 30
            }
            alarm[3] = global.evadetime
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            with (instance_create(x, y, obj_miniculus_eye))
            {
                damagedone = other.enemyattack
                spd = 2
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(x, y, obj_miniculus_eye))
            {
                damagedone = other.enemyattack
                spd = 2
                alarm[0] = 45
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
                global.battleapproachstring = "* Miniculus remains the#  unmatched champion of#  checking things out."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                if (sparemeter < 15 && sparemeter != 0)
                    sparemeter += 5
                global.battleapproachstring = "* Miniculus is incredibly#  red, due to being irritated#  and being irritated."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You throw some of your#  pocket sand at Miniculus."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                global.battleapproachstring = "* Miniculus has got#  itself on you."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You run in circles around#  Miniculus, but it doesn't#  seem to get disoriented."
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
                    if (sparemeter == 10)
                    {
                        global.battleapproachstring = "* Miniculus has stopped#  glaring at you."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You take out your eye drops#  and drip them on Miniculus,#  washing away all the sand."
                        }
                    }
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* Miniculus looks a lot#  less red already!"
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You take out your eye drops#  and drip them on the giant#  eye, moisturizing it."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You drip some more on it.#* All the dust and dirt on#  Miniculus is washed off!"
                        }
                    }
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* Miniculus blinks.#* Or is it winking at you?#* Hard to tell."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You want to use more,#  but Miniculus politely#  closes itself."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

