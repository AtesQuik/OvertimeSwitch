var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Weird Wizard's final#  trick was turning into#  a dead man. It worked."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(23, 26))
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
            global.battleapproachstring = "* Weird Wizard's rabbits are#  leaving his hat."
        else
            global.battleapproachstring = "* Weird Wizard's skin is#  growing scales. He is#  becoming a Weird Lizard."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Weird Wizard is glad you#  hired him before things#  got worse."
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
        with (instance_create(160, 85, obj_wizard_hand))
        {
            damagedone = other.enemyattack
            spd = 5
        }
        alarm[3] = global.evadetime
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            with (instance_create(160, 85, obj_wizard_hand))
            {
                damagedone = other.enemyattack
                spd = 4
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(160, 85, obj_wizard_hand))
            {
                damagedone = other.enemyattack
                spd = 5
            }
            alarm[3] = global.evadetime
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            with (instance_create(160, 85, obj_wizard_hand))
            {
                damagedone = other.enemyattack
                spd = 3
            }
            alarm[3] = global.evadetime
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            with (instance_create(160, 85, obj_wizard_hand))
            {
                damagedone = other.enemyattack
                spd = 5
            }
            alarm[3] = global.evadetime
        }
        else
        {
            with (instance_create(160, 85, obj_wizard_hand))
            {
                damagedone = other.enemyattack
                spd = 4
            }
            alarm[3] = global.evadetime
        }
    }
}
electricity = choose(0, 1, 2, 3, 4, 5)
electroshake = (shaking - 1.5)
if (shakechange == 0)
{
    if (shaking < 0.5)
        shaking += 0.1
    if (shaking >= 0.5 && shaking < 1.5)
        shaking += 0.25
    if (shaking >= 1.5 && shaking < 3)
        shaking += 0.5
    if (shaking >= 3 && shaking < 4)
        shaking += 0.25
    if (shaking >= 4 && shaking < 4.5)
        shaking += 0.1
    if (shaking == 4.5)
        shakechange = 1
}
else
{
    if (shaking > 4)
        shaking -= 0.1
    if (shaking > 3 && shaking <= 4)
        shaking -= 0.25
    if (shaking > 1.5 && shaking <= 3)
        shaking -= 0.5
    if (shaking > 0.5 && shaking <= 1.5)
        shaking -= 0.25
    if (shaking <= 0.5)
        shaking -= 0.1
    if (shaking == 0)
        shakechange = 0
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
                global.battleapproachstring = "* Weird Wizard looks around#  to see how popular he is."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                sparemeter -= 5
                actchoice = 1
                if (!instance_exists(obj_text_box_battle))
                {
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* Weird Wizard drinks one of#  his potions, turning his#  face literally green."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You bet that Weird Wizard#  couldn't drink one of his#  potions."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You bet with Weird Wizard#  that he couldn't possibly#  drink another one."
                        }
                    }
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* Weird Wizard is relieved#  that he can't drink any#  more potions."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You want to do another bet,#  but Weird Wizard doesn't#  have any bottles left."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                global.battleapproachstring = "* Weird Wizard is more of a#  fan of using magic for fun#  than dueling."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You decide it's time for#  a magic duel! Weird Wizard#  thinks otherwise."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                global.battleapproachstring = "* Weird Wizard is narrating#  everything that's happening#  to himself."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You try to converse with#  Weird Wizard, but he#  prefers talking to himself."
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

