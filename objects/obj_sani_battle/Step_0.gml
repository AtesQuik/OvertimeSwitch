var __b__;
action_set_relative(1)
if (global.genocide == 1)
{
    if (genocideon == 0)
        genocideon = 1
}
if (genocideon == 1)
{
    if instance_exists(obj_enemy_down)
    {
        if (global.enemiesleft > 0)
        {
            global.genocideaborted = 1
            global.genocide = 0
        }
    }
    if instance_exists(obj_enemy_spared)
    {
        global.sanicancelledgeno = 1
        global.genocideaborted = 1
        global.genocide = 0
    }
}
else if (genocideon == 0)
{
    if (instance_exists(obj_enemy_down) || instance_exists(obj_enemy_spared))
    {
        global.genocideaborted = 1
        global.genocide = 0
    }
}
if (enemyhealth <= 0)
{
    if (isdying == 0)
    {
        global.evadetime = 0
        with (obj_music_player)
            instance_destroy()
        isdying = 1
        if (global.genocide == 1)
        {
            alarm[8] = 30
            geno = 1
        }
        if (global.genocide == 0 && (!(place_meeting(x, y, obj_enemy_spareable))))
        {
            alarm[9] = 30
            geno = 0
        }
        if (global.genocide == 0 && place_meeting(x, y, obj_enemy_spareable))
            alarm[10] = 30
    }
}
if (sparemeter <= 0 && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
        instance_create(x, y, obj_enemy_spareable)
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            instance_create(x, y, obj_enemy_spared)
            global.sanihired = 1
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
        if (global.genocide == 0)
        {
            if (!(place_meeting(x, y, obj_enemy_spareable)))
                enemyhealth -= global.enemydamage
            else
            {
                global.enemydamage = global.betrayaldamage
                enemyhealth = 0
            }
        }
        else if (global.genocide == 1)
        {
            global.enemydamage = global.betrayaldamage
            enemyhealth = 0
        }
    }
}
script_execute(scr_sparemeter_limit)
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && global.evadetime > 1)
{
    if (sparemeter > 35)
    {
        attacking = 1
        alarm[3] = global.evadetime
        if ((attackchance == 1 || (attackchance == 3 && global.playerhealth < 5)) && (!instance_exists(obj_sani_syringe_gun)))
        {
            with (instance_create(32, 224, obj_sani_syringe_gun))
            {
                dmg = other.enemyattack
                gundirection = 0
                image_index = 0
            }
        }
        if ((attackchance == 2 || (attackchance == 4 && global.playerhealth < 5)) && (!instance_exists(obj_sani_syringe_gun)))
        {
            with (instance_create(288, 224, obj_sani_syringe_gun))
            {
                dmg = other.enemyattack
                gundirection = 1
                image_index = 1
            }
        }
        if (attackchance == 3 && (!instance_exists(obj_sani_bonesaw)) && global.playerhealth > 4)
        {
            with (instance_create(80, 96, obj_sani_bonesaw))
            {
                image_index = 0
                image_yscale = 1
                sawdirection = 1
                damagedone = other.enemyattack
            }
        }
        if (attackchance == 4 && (!instance_exists(obj_sani_bonesaw)) && global.playerhealth > 4)
        {
            with (instance_create(240, 96, obj_sani_bonesaw))
            {
                image_index = 1
                image_yscale = -1
                sawdirection = -1
                damagedone = other.enemyattack
            }
        }
    }
    else
        global.evadetime = 1
}
if instance_exists(obj_speech_bubble)
{
    if (geno == 0 && enemyhealth <= 0 && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        if (obj_speech_bubble.N == 0)
            image_index = 9
        if (obj_speech_bubble.N == 1)
            image_index = 10
        if (obj_speech_bubble.N == 2)
            image_index = 11
        if (obj_speech_bubble.N == 3)
            image_index = 11
        if (obj_speech_bubble.N == 4)
            image_index = 11
        if (obj_speech_bubble.N == 5)
            image_index = 10
        if (obj_speech_bubble.N == 6)
            image_index = 10
        if (obj_speech_bubble.N == 7)
            image_index = 9
        if (obj_speech_bubble.N == 8)
            image_index = 10
        if (obj_speech_bubble.N == 9)
            image_index = 10
        if (obj_speech_bubble.N == 10)
            image_index = 10
        if (obj_speech_bubble.N == 11)
            image_index = 10
        if (obj_speech_bubble.N == 12)
            image_index = 11
        if (obj_speech_bubble.N == 13)
            image_index = 11
    }
    else if (geno == 1 && enemyhealth <= 0)
    {
        if (obj_speech_bubble.N == 0)
            image_index = 9
        if (obj_speech_bubble.N == 1)
            image_index = 9
        if (obj_speech_bubble.N == 2)
            image_index = 9
        if (obj_speech_bubble.N == 3)
            image_index = 10
        if (obj_speech_bubble.N == 4)
            image_index = 9
        if (obj_speech_bubble.N == 5)
            image_index = 9
        if (obj_speech_bubble.N == 6)
            image_index = 10
        if (obj_speech_bubble.N == 7)
            image_index = 12
    }
}
if (isdying == 2 && (!instance_exists(obj_speech_bubble)) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (obj_evade_to_box)
        instance_destroy()
    with (obj_box_to_evade)
        instance_destroy()
    with (obj_evade_ground)
        instance_destroy()
    with (obj_soul_battle_select)
        instance_destroy()
    alarm[6] = 1
    instance_create(x, y, obj_enemy_down)
    global.xpyouwillget += xpreceive
    global.cashyouwillget += 0
    global.enemieskilled += 1
    global.sanikilled = 1
    global.increaselv = 1
    script_execute(scr_battle_end)
}
scr_enemy_names()
scr_enemy_death_transparency()
if (place_meeting(x, y, obj_actwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_actwave))
        instance_destroy()
    alarm[5] = 1
}
if (place_meeting(x, y, obj_fightwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_fightwave))
        instance_destroy()
    if (enemyhealth > 0)
        alarm[5] = 30
}
if (place_meeting(x, y, obj_itemwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_itemwave))
        instance_destroy()
    alarm[5] = 1
}
if (global.flee == 0 && place_meeting(x, y, obj_fleewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_fleewave))
        instance_destroy()
    alarm[5] = 1
}
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
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You don't think#  talking will work#  in this situation."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You don't think#  talking will work#  in this situation."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You don't think#  talking will work#  in this situation."
                    }
                }
            }
        }
        if (place_meeting(x, y, obj_sparewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
        {
            with (instance_position(x, y, obj_sparewave))
                instance_destroy()
            sparemeter -= 5
            alarm[7] = 1
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

