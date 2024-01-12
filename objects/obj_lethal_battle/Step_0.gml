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
        global.battleapproachstring = "* Lethal Kitten is contented."
        enemyname = "L.Kitten"
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
if (leg1updown == 0)
{
    if (leg1y < 5)
        leg1y += 0.25
    else
        leg1updown = 1
}
if (leg1updown == 1)
{
    if (leg1y > 0)
        leg1y -= 0.25
    else
        leg1updown = 0
}
if (animprog == 0)
{
    if (counter < 90)
        counter += 1
    else
    {
        animprog = 1
        counter = 0
    }
    headshakex = random_range(-0.5, 0.5)
    headshakey = random_range(-0.5, 0.5)
}
if (animprog == 1)
{
    headshakex = 0
    headshakey = 0
    animprog = 2
}
if (animprog == 2)
{
    if (extrahead < 24)
        extrahead += 0.5
    else
        animprog = 3
}
if (animprog == 3)
{
    if (counter < 30)
        counter += 1
    else
    {
        animprog = 4
        counter = 0
    }
}
if (animprog == 4)
{
    if (eyeprogress < 4)
        eyeprogress += 0.5
    else
    {
        eyeprogress = 4
        animprog = 5
    }
}
if (animprog == 5)
{
    if (counter < 20)
        counter += 1
    else
    {
        animprog = 6
        counter = 0
    }
}
if (animprog == 6)
{
    if (eyeprogress > 0)
        eyeprogress -= 1
    else
    {
        eyeprogress = 0
        animprog = 7
    }
}
if (animprog == 7)
{
    if (eyeprogress < 4)
        eyeprogress += 1
    else
    {
        eyeprogress = 4
        animprog = 8
    }
}
if (animprog == 8)
{
    if (counter < 10)
        counter += 1
    else
    {
        animprog = 9
        counter = 0
    }
}
if (animprog == 9)
{
    if (eyeprogress > 0)
        eyeprogress -= 1
    else
    {
        eyeprogress = 0
        animprog = 10
    }
}
if (animprog == 10)
{
    if (eyeprogress < 4)
        eyeprogress += 1
    else
    {
        eyeprogress = 4
        animprog = 11
    }
}
if (animprog == 11)
{
    if (counter < 20)
        counter += 1
    else
    {
        animprog = 12
        counter = 0
    }
}
if (animprog == 12)
{
    if (eyeprogress > 0)
        eyeprogress -= 0.5
    else
    {
        eyeprogress = 0
        animprog = 13
    }
}
if (animprog == 13)
{
    if (extrahead > 0)
        extrahead -= 0.5
    else
        animprog = 0
}
if (leftorright == 0)
{
    if (tailangle < 2)
        tailangle += 0.2
    if (tailangle >= 2 && tailangle < 6)
        tailangle += 0.5
    if (tailangle >= 6 && tailangle < 12)
        tailangle += 1
    if (tailangle >= 12 && tailangle < 16)
        tailangle += 0.5
    if (tailangle >= 16 && tailangle < 18)
        tailangle += 0.2
    if (tailangle == 18)
        leftorright = 1
}
else
{
    if (tailangle > 16)
        tailangle -= 0.2
    if (tailangle > 12 && tailangle <= 16)
        tailangle -= 0.5
    if (tailangle > 6 && tailangle <= 12)
        tailangle -= 1
    if (tailangle > 2 && tailangle <= 6)
        tailangle -= 0.5
    if (tailangle <= 2)
        tailangle -= 0.2
    if (tailangle == 0)
        leftorright = 0
}
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))))
{
    attacking = 1
    alarm[3] = 30
    with (instance_create((global.soulxposition + jaw1x), (global.soulyposition + jaw1y), obj_lethal_jaws))
    {
        damagedone = other.enemyattack
        image_index = 0
    }
    with (instance_create((global.soulxposition + jaw1x), (global.soulyposition + jaw1y), obj_lethal_jaws))
    {
        damagedone = other.enemyattack
        image_index = 1
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
                global.battleapproachstring = "* It smells like sodium#  chloride and broken dreams."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                if (!instance_exists(obj_text_box_battle))
                {
                    if (pether == 0)
                    {
                        pether = 1
                        sparemeter -= 5
                        global.battleapproachstring = "* You hear purring from#  within the creature."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You reach out and pet the#  monstrosity. The laughter#  stops for a bit."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* The fur now feels like#  steel wool.#* Enough petting."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    if (listened == 0)
                    {
                        listened = 1
                        sparemeter -= 5
                        global.battleapproachstring = "* The forced smile looks#  much more natural now."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You sit down and listen#  to the laughter. It gets#  quieter and quieter."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You listen more, but the#  laughter doesn't tell you#  anything."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    if (moisturized == 0)
                    {
                        moisturized = 1
                        sparemeter -= 5
                        global.battleapproachstring = "* The big eye seems to#  thank you by blinking#  in morse code."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You cry, cry and cry.#* Your tears are soothing#  to the abomination."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* The monster started to cry#  as well. No need for your#  tears anymore."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

