var __b__;
action_set_relative(1)
if (global.enemiesleft > 0)
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
        alarm[8] = 30
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
if (enemyhealth > 0 && sparemeter > 10 && (!(place_meeting(x, y, obj_enemy_spareable))))
{
    if instance_exists(obj_evade_soul)
    {
        if (blackalpha < 0.5)
            blackalpha += 0.05
    }
    else if (blackalpha > 0)
        blackalpha -= 0.05
}
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && global.evadetime > 1)
{
    attacking = 1
    alarm[3] = 10
    if (sparemeter == 30 || sparemeter == 20 || sparemeter == 15)
    {
        with (instance_create(irandom_range(125, 195), choose(110, 100, 90), obj_tiny_block))
        {
            damagedone = other.enemyattack
            spd = choose(1, 2)
        }
    }
}
if (abouttocrash == 1 && (!instance_exists(obj_speech_bubble_noevade)))
    room_goto(rm_mc_transformation)
if instance_exists(obj_speech_bubble)
{
    with (obj_speech_bubble)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if instance_exists(obj_speech_bubble_noevade)
{
    with (obj_speech_bubble_noevade)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (noshake == 0 && button == 0)
{
    if (irandom(29) == 1)
        shaking = 5
    if (upordown == 0)
    {
        if (shaking >= 0 && shaking < 1)
            shaking += 0.5
        if (shaking >= 1 && shaking < 2)
            shaking += 0.5
        if (shaking >= 2 && shaking < 3)
            shaking += 0.5
        if (shaking >= 3 && shaking < 7)
            shaking += 1
        if (shaking >= 7 && shaking < 8)
            shaking += 0.5
        if (shaking >= 8 && shaking < 9)
            shaking += 0.5
        if (shaking >= 9 && shaking < 10)
            shaking += 0.5
        if (shaking >= 10)
            upordown = 1
    }
    if (upordown == 1)
    {
        if (shaking <= 10 && shaking > 9)
            shaking -= 0.5
        if (shaking <= 9 && shaking > 8)
            shaking -= 0.5
        if (shaking <= 8 && shaking > 7)
            shaking -= 0.5
        if (shaking <= 7 && shaking > 3)
            shaking -= 1
        if (shaking <= 3 && shaking > 2)
            shaking -= 0.5
        if (shaking <= 2 && shaking > 1)
            shaking -= 0.5
        if (shaking <= 1 && shaking > 0)
            shaking -= 0.5
        if (shaking <= 0)
            upordown = 0
    }
}
if instance_exists(obj_speech_bubble)
{
    if (sparemeter == 35)
    {
        if (obj_speech_bubble.N == 1)
            noshake = 1
        if (obj_speech_bubble.N == 7)
            noshake = 0
        if (obj_speech_bubble.N == 10)
            noshake = 1
    }
    if (sparemeter == 25)
    {
        if (progress == 0)
        {
            if (obj_speech_bubble.N == 1)
                noshake = 1
        }
        else
            noshake = 1
    }
    if (sparemeter == 10)
    {
        if (progress == 0)
        {
            if (obj_speech_bubble.N == 0)
                noshake = 1
        }
        else
            noshake = 1
    }
    if (sparemeter == 5)
    {
        if (obj_speech_bubble.N == 0)
            noshake = 1
    }
}
if instance_exists(obj_speech_bubble_noevade)
{
    if (sparemeter == 35)
    {
        if (obj_speech_bubble_noevade.N == 1)
            noshake = 1
        if (obj_speech_bubble_noevade.N == 7)
            noshake = 0
        if (obj_speech_bubble_noevade.N == 10)
            noshake = 1
    }
    if (sparemeter == 25)
    {
        if (progress == 0)
        {
            if (obj_speech_bubble_noevade.N == 1)
                noshake = 1
        }
        else
            noshake = 1
    }
    if (sparemeter == 10)
    {
        if (progress == 0)
        {
            if (obj_speech_bubble_noevade.N == 0)
                noshake = 1
        }
        else
            noshake = 1
    }
    if (sparemeter == 5)
    {
        if (obj_speech_bubble_noevade.N == 0)
            noshake = 1
    }
    if (sparemeter == 5 || isdying != 0)
        noshake = 1
}
if ((!instance_exists(obj_speech_bubble)) && (!instance_exists(obj_speech_bubble_noevade)))
    noshake = 0
if (sparemeter == 25)
{
    if (progress < 8)
    {
        global.evadetime = 120
        alarm[3] = 120
        if instance_exists(obj_evade_ground)
            obj_evade_ground.alarm[1] = 120
        if instance_exists(obj_evade_soul)
        {
            with (obj_evade_soul)
                instance_destroy()
        }
    }
    if (progress == 1 && (!instance_exists(obj_speech_bubble)))
    {
        progress = 2
        instance_create(160, y, obj_mc_tinyball)
    }
    if (progress == 3)
    {
        progress = 4
        with (instance_create(x, 0, obj_speech_bubble_noevade))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "NOW PRESS#" + "\"" + "SPACE" + "\"" + "!"
        }
    }
    if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
    {
        progress = 6
        with (obj_mc_tinyball)
            progress = 5
    }
    if (progress == 6 && (!instance_exists(obj_mc_tinydisp)))
    {
        progress = 7
        with (instance_create(x, 0, obj_speech_bubble_noevade))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 2
            STR[0] = "YEEAAH!"
            STR[1] = "THAT'LL#BLOCK#THE#ATTACKS!"
            STR[2] = "ALRIGHT, I#GOTTA GET BACK#TO FIGURING OUT#A SOLUTION!"
        }
    }
    if (progress == 7 && (!instance_exists(obj_speech_bubble_noevade)))
    {
        progress = 8
        global.evadetime = 1
        alarm[3] = 1
        if instance_exists(obj_evade_ground)
            obj_evade_ground.alarm[1] = 1
        with (obj_fake_evade_ground)
            instance_destroy()
        with (obj_fake_evade_soul)
            instance_destroy()
        with (obj_soul_ball)
            instance_destroy()
    }
}
if (sparemeter == 10)
{
    if (progress < 5)
    {
        global.evadetime = 120
        alarm[3] = 120
        if instance_exists(obj_evade_ground)
            obj_evade_ground.alarm[1] = 120
    }
    if (progress == 1 && (!instance_exists(obj_speech_bubble)))
    {
        progress = 2
        alarm[9] = 30
    }
    if (progress == 3)
    {
        progress = 4
        with (instance_create(x, 0, obj_speech_bubble_noevade))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "OKAY!#PRESS IT NOW!"
        }
    }
    if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
    {
        progress = 5
        global.evadetime = 1
        alarm[3] = 1
        sparemeter = 5
        if instance_exists(obj_evade_ground)
            obj_evade_ground.alarm[1] = 1
    }
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
    if (sapped == 0)
        alarm[5] = 1
    else
    {
        with (obj_music_player)
            instance_destroy()
        alarm[8] = 1
    }
}
if (global.flee == 0 && place_meeting(x, y, obj_fleewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_fleewave))
        instance_destroy()
    alarm[5] = 1
}
if (place_meeting(x, y, obj_sparewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_sparewave))
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
                if (sparemeter > 5)
                {
                    if (!instance_exists(obj_text_box_battle))
                    {
                        instance_create(0, 0, obj_text_box_battle)
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You ask Dispenser if he'd#  like to cook again. He's#  not programmed for that."
                        }
                    }
                }
                else
                {
                    sparemeter -= 5
                    noshake = 1
                    button = 1
                    audio_play_sound(snd_button, 1, false)
                    if (!instance_exists(obj_text_box_battle))
                    {
                        instance_create(0, 0, obj_text_box_battle)
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You press the button..."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (sparemeter > 5)
                {
                    if (!instance_exists(obj_text_box_battle))
                    {
                        instance_create(0, 0, obj_text_box_battle)
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You remind Dispenser of the#  movie you two starred in.#* He doesn't remember it."
                        }
                    }
                }
                else
                {
                    sparemeter -= 5
                    noshake = 1
                    button = 1
                    audio_play_sound(snd_button, 1, false)
                    if (!instance_exists(obj_text_box_battle))
                    {
                        instance_create(0, 0, obj_text_box_battle)
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You press the button..."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (sparemeter > 5)
                {
                    if (!instance_exists(obj_text_box_battle))
                    {
                        instance_create(0, 0, obj_text_box_battle)
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You hum the song Dispenser#  sang for you. It doesn't#  seem familiar to him."
                        }
                    }
                }
                else
                {
                    sparemeter -= 5
                    noshake = 1
                    button = 1
                    audio_play_sound(snd_button, 1, false)
                    if (!instance_exists(obj_text_box_battle))
                    {
                        instance_create(0, 0, obj_text_box_battle)
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You press the button..."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

