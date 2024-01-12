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
        global.battleapproachstring = "* The sky is still blue#* The clouds come and go#* Yet something is different"
        enemyname = "Huntsman"
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
if (instance_exists(obj_evade_ground) && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))))
{
    if (attacking == 0)
    {
        alarm[3] = global.evadetime
        attacking = 1
    }
    counter += 1
    if (rightorleft == 0)
    {
        if (counter < 30)
            arm1x += 3
        if (counter == 30)
        {
            with (instance_create(-30, irandom_range(100, 200), obj_hunter_arm))
                damagedone = other.enemyattack
        }
        if (counter == 90)
        {
            with (instance_create(350, irandom_range(100, 200), obj_hunter_arm))
                damagedone = other.enemyattack
        }
        if (counter == 150)
        {
            with (instance_create(-30, irandom_range(100, 200), obj_hunter_arm))
                damagedone = other.enemyattack
        }
        if (counter == 210)
        {
            if instance_exists(obj_hunter_arm)
            {
                with (obj_hunter_arm)
                    fadeout = 1
            }
        }
        if (counter >= 240)
        {
            if (arm1x > 6)
                arm1x -= 6
            else
                arm1x = 0
        }
    }
    else if (rightorleft == 1)
    {
        if (counter < 30)
            arm2x += 3
        if (counter == 30)
        {
            with (instance_create(350, irandom_range(100, 200), obj_hunter_arm))
                damagedone = other.enemyattack
        }
        if (counter == 90)
        {
            with (instance_create(-30, irandom_range(100, 200), obj_hunter_arm))
                damagedone = other.enemyattack
        }
        if (counter == 150)
        {
            with (instance_create(350, irandom_range(100, 200), obj_hunter_arm))
                damagedone = other.enemyattack
        }
        if (counter == 210)
        {
            if instance_exists(obj_hunter_arm)
            {
                with (obj_hunter_arm)
                    fadeout = 1
            }
        }
        if (counter >= 240)
        {
            if (arm2x > 6)
                arm2x -= 6
            else
                arm2x = 0
        }
    }
}
if (downorup == 0)
{
    if (army < 5)
        army += 0.25
    else
        downorup = 1
}
else if (downorup == 1)
{
    if (army > 0)
        army -= 0.25
    else
        downorup = 0
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
                global.battleapproachstring = "* Don't let yourself be hurt#  this time."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                if (!instance_exists(obj_text_box_battle))
                {
                    if (confronted == 0)
                    {
                        confronted = 1
                        sparemeter -= 5
                        global.battleapproachstring = "* Then I saw your face#* Then I saw your smile"
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You tell the monstrosity#  you don't want any of this.#* It doesn't either."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You already stood your#  ground."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    if (embraced == 0)
                    {
                        embraced = 1
                        sparemeter -= 5
                        global.battleapproachstring = "* Then your kiss so soft#* Then your touch so warm"
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You get closer to the beast#  and embrace it. It softly#  embraces you as well."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* It has had enough human#  contact already."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    if (fallen == 0)
                    {
                        fallen = 1
                        sparemeter -= 5
                        global.battleapproachstring = "* The mountains still high#* Yet something is different#* Are we falling in love?"
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* The being falls to the#  floor. You grab its arm and#  pull it back up."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* It has already been helped#  up after having fallen#  down."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

