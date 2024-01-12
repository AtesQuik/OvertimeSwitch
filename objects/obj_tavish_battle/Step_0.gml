var __b__;
action_set_relative(0)
if (global.enemiesleft > 0)
{
    if (instance_exists(obj_enemy_down) || instance_exists(obj_enemy_spared))
    {
        global.genocideaborted = 1
        global.genocide = 0
    }
}
global.demohp = enemyhealth
if (upordown == 0)
{
    if (shaking < 8)
        shaking += 1
    else
        upordown = 1
}
else if (shaking > -7)
    shaking -= 1
else
    upordown = 0
if (!instance_exists(obj_m_demointro))
{
    if (sparemeter > 5)
        global.soultype = 2
    else
        global.soultype = 0
    if (sparemeter == 10)
        global.fleedisabled = 0
    else
        global.fleedisabled = 1
}
if instance_exists(obj_soul_flee)
{
    if (enemyhealth > 0)
        global.demochase = 1
}
else if (enemyhealth <= 0)
    global.demochase = 0
if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemydead == 0)
{
    if (global.demochase == 1)
        head = 1
    else
        head = 0
}
if (geno == 0 && enemyhealth <= 0 && (!(place_meeting(x, y, obj_enemy_spareable))) && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        image_index = 0
    if (obj_speech_bubble_noevade.N == 1)
        image_index = 3
    if (obj_speech_bubble_noevade.N == 2)
        image_index = 5
    if (obj_speech_bubble_noevade.N == 3)
        image_index = 6
    if (obj_speech_bubble_noevade.N == 4)
        image_index = 7
    if (obj_speech_bubble_noevade.N == 5)
        image_index = 8
    if (obj_speech_bubble_noevade.N == 6)
        image_index = 9
    if (obj_speech_bubble_noevade.N == 7)
        image_index = 7
    if (obj_speech_bubble_noevade.N == 8)
        image_index = 6
    if (obj_speech_bubble_noevade.N == 9)
        image_index = 6
    if (obj_speech_bubble_noevade.N == 10)
        image_index = 5
    if (obj_speech_bubble_noevade.N == 11)
        image_index = 3
    if (obj_speech_bubble_noevade.N == 12)
        image_index = 4
    if (obj_speech_bubble_noevade.N == 13)
        image_index = 4
    if (obj_speech_bubble_noevade.N == 14)
        image_index = 4
}
if (geno == 1 && enemyhealth <= 0 && dyingprogress == 0 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        image_index = 0
    if (obj_speech_bubble_noevade.N == 1)
        image_index = 0
    if (obj_speech_bubble_noevade.N == 2)
        image_index = 3
    if (obj_speech_bubble_noevade.N == 3)
        image_index = 4
    if (obj_speech_bubble_noevade.N == 4)
        image_index = 6
}
if (geno == 1 && dyingprogress == 6 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        image_index = 3
    if (obj_speech_bubble_noevade.N == 1)
        image_index = 7
    if (obj_speech_bubble_noevade.N == 2)
        image_index = 7
    if (obj_speech_bubble_noevade.N == 3)
        image_index = 7
    if (obj_speech_bubble_noevade.N == 4)
        image_index = 8
    if (obj_speech_bubble_noevade.N == 5)
        image_index = 8
    if (obj_speech_bubble_noevade.N == 6)
        image_index = 8
    if (obj_speech_bubble_noevade.N == 7)
        image_index = 9
    if (obj_speech_bubble_noevade.N == 8)
        image_index = 8
    if (obj_speech_bubble_noevade.N == 9)
        image_index = 8
    if (obj_speech_bubble_noevade.N == 10)
        image_index = 9
    if (obj_speech_bubble_noevade.N == 11)
        image_index = 8
    if (obj_speech_bubble_noevade.N == 12)
        image_index = 8
    if (obj_speech_bubble_noevade.N == 13)
        image_index = 9
    if (obj_speech_bubble_noevade.N == 14)
        image_index = 9
    if (obj_speech_bubble_noevade.N == 15)
        image_index = 15
}
if (geno == 1 && dyingprogress == 10 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        image_index = 10
    if (obj_speech_bubble_noevade.N == 1)
        image_index = 11
    if (obj_speech_bubble_noevade.N == 2)
        image_index = 12
    if (obj_speech_bubble_noevade.N == 3)
        image_index = 12
    if (obj_speech_bubble_noevade.N == 4)
        image_index = 12
    if (obj_speech_bubble_noevade.N == 5)
        image_index = 11
    if (obj_speech_bubble_noevade.N == 6)
        image_index = 13
    if (obj_speech_bubble_noevade.N == 4)
        obj_speech_bubble_noevade.textvoice = 100
    if (obj_speech_bubble_noevade.N == 5)
        obj_speech_bubble_noevade.textvoice = 101
    if (obj_speech_bubble_noevade.N == 6)
        obj_speech_bubble_noevade.textvoice = 102
}
if (geno == 1)
{
    if (dyingprogress == 7 || (dyingprogress == 6 && (!instance_exists(obj_speech_bubble_noevade))))
        image_index = 15
    if (dyingprogress == 11 || (dyingprogress == 10 && (!instance_exists(obj_speech_bubble_noevade))))
        image_index = 13
}
if (enemyhealth <= 0)
{
    with (obj_evade_soul)
        instance_destroy()
    if (isdying == 0)
    {
        global.evadetime = 0
        with (obj_music_player)
            instance_destroy()
        isdying = 1
        alarm[11] = 30
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
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
            global.tavishhired = 1
            global.genocideaborted = 1
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
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0)
{
    if (attacking == 0)
    {
        randomchance = choose(0, 1, 2, 3)
        randomchance2 = choose(0, 1, 2)
        if (attacktype == 0)
        {
            attacking = 1
            if (!instance_exists(obj_m_demointro))
            {
                if (slashing == 0 && sparemeter == 10)
                {
                    slashing = 1
                    alarm[1] = 210
                }
                alarm[3] = 15
                if (randomchance == 0)
                {
                    with (instance_create(160, -15, obj_tavish_swordpiece))
                    {
                        spd = 6
                        sdirection = 0
                        damagedone = other.enemyattack
                    }
                }
                if (randomchance == 1)
                {
                    with (instance_create(-15, 160, obj_tavish_swordpiece))
                    {
                        spd = 6
                        sdirection = 1
                        damagedone = other.enemyattack
                    }
                }
                if (randomchance == 2)
                {
                    with (instance_create(160, 255, obj_tavish_swordpiece))
                    {
                        spd = 4
                        sdirection = 2
                        damagedone = other.enemyattack
                    }
                }
                if (randomchance == 3)
                {
                    with (instance_create(335, 160, obj_tavish_swordpiece))
                    {
                        spd = 6
                        sdirection = 3
                        damagedone = other.enemyattack
                    }
                }
            }
            else
            {
                with (obj_tavish_swordpiece)
                    instance_destroy()
            }
        }
        else
        {
            attacking = 1
            if (!instance_exists(obj_m_demointro))
            {
                alarm[3] = 30
                if (randomchance2 == 0)
                {
                    with (instance_create(135, 220, obj_m_risesword))
                        damagedone = other.enemyattack
                }
                if (randomchance2 == 1)
                {
                    with (instance_create(160, 220, obj_m_risesword))
                        damagedone = other.enemyattack
                }
                if (randomchance2 == 2)
                {
                    with (instance_create(185, 220, obj_m_risesword))
                        damagedone = other.enemyattack
                }
                if (slashing == 0 && sparemeter == 5)
                {
                    slashing = 1
                    alarm[1] = 210
                }
            }
            else
            {
                with (obj_m_risesword)
                    instance_destroy()
            }
        }
    }
}
if (isdying == 2 && (!instance_exists(obj_speech_bubble_noevade)) && (!(place_meeting(x, y, obj_enemy_down))))
{
    if (dyingprogress == 0)
    {
        instance_create(x, y, obj_death_effect)
        dyingprogress = 1
    }
    if (dyingprogress == 1)
    {
        if (image_alpha > 0.05)
            image_alpha -= 0.05
        else
        {
            dyingprogress = 2
            alarm[2] = 60
        }
    }
    if (dyingprogress == 3)
    {
        if (image_alpha < 1)
            image_alpha += 0.075
        else
        {
            dyingprogress = 4
            alarm[4] = 30
        }
    }
    if (dyingprogress == 5)
    {
        with (instance_create(x, y, obj_music_player))
            musictrack = 140
        dyingprogress = 6
        with (instance_create((x + 8), 0, obj_speech_bubble_noevade))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 99
            MAXSTR = 15
            STR[0] = "...which is..."
            STR[1] = "Why I won't!#"
            STR[2] = "We knew this was#gunna happen!"
            STR[3] = "That's why Eli#gave me these#luvely pills!"
            STR[4] = "I dun' know how#they work, but..."
            STR[5] = "I know that they#will delay me#demise a bit!"
            STR[6] = "So that I can#kick yer butt..."
            STR[7] = "...before I kick#the bucket!"
            STR[8] = "Because..."
            STR[9] = "Ye're not just#'ere to kill the#Mann brothers,#are ye?"
            STR[10] = "No...ya want to#kill EVERYONE."
            STR[11] = "Well, I'm not#gunna let that#happen."
            STR[12] = "With my last#breaths..."
            STR[13] = "I'm goin' to#make yer life#a NIGHTMARE."
            STR[14] = "Buckle up, lass!"
            STR[15] = "Prepare for the#most intense#battle of yer#entire life!"
        }
    }
    if (dyingprogress == 6)
    {
        if (!instance_exists(obj_speech_bubble_noevade))
        {
            dyingprogress = 7
            instance_create(x, y, obj_m_whitescreen)
            with (obj_music_player)
                instance_destroy()
        }
    }
    if (dyingprogress == 7 && obj_m_whitescreen.whitescreen == 1)
    {
        image_index = 10
        dyingprogress = 8
        with (instance_create((x + 8), 0, obj_speech_bubble_noevade))
        {
            depth = -3000
            bubbleshape = 3
            voiceon = 1
            textvoice = 99
            MAXSTR = 0
            STR[0] = "'old on..."
        }
    }
    if (dyingprogress == 8 && (!instance_exists(obj_speech_bubble_noevade)))
    {
        if (obj_m_whitescreen.whitescreen > 0)
            obj_m_whitescreen.whitescreen -= 0.1
        else
        {
            with (obj_m_whitescreen)
                instance_destroy()
            dyingprogress = 9
        }
    }
    if (dyingprogress == 9)
    {
        dyingprogress = 10
        with (instance_create((x + 8), 0, obj_speech_bubble_noevade))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 99
            MAXSTR = 6
            STR[0] = "I dun...#feel...#right..."
            STR[1] = "Oh no."
            STR[2] = "He said not to#take them with#alcohol..."
            STR[3] = "It would 'ave#terrible side#effects,#he said..."
            STR[4] = "You'd be worse#off than before,#he said..."
            STR[5] = "..."
            STR[6] = "Ah, cripe!"
        }
    }
    if (dyingprogress == 10 && (!instance_exists(obj_speech_bubble_noevade)) && (!instance_exists(obj_speech_bubble)))
    {
        dyingprogress = 11
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
        global.tavishkilled = 1
        global.minesover = 1
        global.increaselv = 1
        script_execute(scr_battle_end)
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
if (place_meeting(x, y, obj_sparewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_sparewave))
        instance_destroy()
    alarm[5] = 1
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
action_set_relative(1)
__b__ = action_if_object(101, 0, 0)
action_set_relative(0)
if (!__b__)
{
    action_set_relative(1)
    __b__ = action_if_object(100, 0, 0)
    action_set_relative(0)
    if (!__b__)
    {
        action_set_relative(1)
        __b__ = action_if_object(112, 0, 0)
        action_set_relative(0)
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
            if (global.actchoice == 1 || global.actchoice == 2 || global.actchoice == 3)
            {
                actchoice = 1
                if (haddrink == 1 && global.drunk < 30)
                    global.drunk += 5
                if (haddrink == 0)
                {
                    haddrink = 1
                    global.battleapproachstring = "* Tavish drinks all of it#  immediately, then looks at#  you as if he wanted more."
                    if (!instance_exists(obj_text_box_battle))
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You take out your emergency#  flask and offer it to#  Tavish. He can't refuse."
                        }
                    }
                }
                if (global.drunk == 5)
                {
                    global.battleapproachstring = "* Tavish seems to be having#  troubles standing straight."
                    if (!instance_exists(obj_text_box_battle))
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You pull out a bottle of#  scotch and offer it to#  Tavish. He seems pleased."
                        }
                    }
                }
                if (global.drunk == 10)
                {
                    global.battleapproachstring = "* Tavish staggers back and#  forth, almost tripping#  over his own feet."
                    if (!instance_exists(obj_text_box_battle))
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You remember that you had#  a small bottle of gin,#  which you offer to Tavish."
                        }
                    }
                }
                if (global.drunk == 15)
                {
                    global.battleapproachstring = "* Tavish lets out a loud#  burp and mumbles something#  incomprehensible."
                    if (!instance_exists(obj_text_box_battle))
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You find an unopened bottle#  of wine on the floor and#  offer it to Tavish."
                        }
                    }
                }
                if (global.drunk == 20)
                {
                    global.battleapproachstring = "* Tavish falls asleep,#  then wakes back up, only#  to fall asleep once again."
                    if (!instance_exists(obj_text_box_battle))
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You look down and find yet#  another bottle on the#  floor. How convenient!"
                        }
                    }
                }
                if (global.drunk == 25)
                {
                    global.battleapproachstring = "* Tavish would be seeing#  double, if it weren't#  for that missing eye."
                    if (!instance_exists(obj_text_box_battle))
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* A small mouse comes along#  and offers Tavish a beer.#* Wait, who was drunk again?"
                        }
                    }
                }
                if (global.drunk == 30)
                {
                    global.battleapproachstring = "* Tavish seems to have#  forgotten that he is#  fighting against you."
                    if (!instance_exists(obj_text_box_battle))
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You're unable to find any#  more alcohol. Maybe try#  running away?"
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

