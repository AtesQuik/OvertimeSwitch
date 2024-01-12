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
if (upordown == 0)
{
    if (shaking < 6)
        shaking += 1
    else
        upordown = 1
}
else if (shaking > -6)
    shaking -= 1
else
    upordown = 0
if (leftorright == 0)
{
    if (armsangle < 1)
        armsangle += 0.25
    if (armsangle >= 1 && armsangle < 3)
        armsangle += 0.5
    if (armsangle >= 3 && armsangle < 6)
        armsangle += 1
    if (armsangle >= 6 && armsangle < 8)
        armsangle += 0.5
    if (armsangle >= 8 && armsangle < 9)
        armsangle += 0.25
    if (armsangle == 9)
        leftorright = 1
}
else
{
    if (armsangle > 8)
        armsangle -= 0.25
    if (armsangle > 6 && armsangle <= 8)
        armsangle -= 0.5
    if (armsangle > 3 && armsangle <= 6)
        armsangle -= 1
    if (armsangle > 1 && armsangle <= 3)
        armsangle -= 0.5
    if (armsangle <= 1)
        armsangle -= 0.25
    if (armsangle == 0)
        leftorright = 0
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
        if (global.genocide == 0)
        {
            alarm[9] = 30
            geno = 0
        }
    }
}
if (sparemeter <= 0 && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))) && jarated == 0)
        instance_create(x, y, obj_enemy_spareable)
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
            global.spyhired = 1
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
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && global.evadetime > 1)
{
    attacking = 1
    if (global.soultype != 3)
    {
        alarm[3] = global.evadetime
        instance_create(x, y, obj_smoke_spawn)
    }
    else
    {
        with (instance_create(choose(-10, 330), choose(140, 160, 180), obj_spy_crab))
            damagedone = other.enemyattack
        if (irandom(2) == 1)
        {
            with (instance_create(choose(-10, 330), choose(140, 160, 180), obj_spy_crab))
                damagedone = other.enemyattack
        }
        alarm[3] = 15
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
    global.cashyouwillget += 90
    global.enemieskilled += 1
    global.spykilled = 1
    global.increaselv = 1
    script_execute(scr_battle_end)
}
if (noshoot == 1)
{
    if instance_exists(obj_target_choice)
    {
        with (obj_target_choice)
            miss = 2
    }
}
else
{
    act1 = "Search"
    act2 = "Look"
    act3 = "Examine"
    if (jarated == 0)
    {
        if (issparing == 0)
        {
            enemyquip = "You can't see him."
            enemyinfo = "His time is now."
        }
        else
        {
            enemyquip = "Spy is back."
            enemyinfo = "Back for business."
        }
    }
}
if (jarated == 0)
{
    if (invisible == 0 && (!instance_exists(obj_speech_bubble)))
    {
        if (cloaked == 1)
        {
            audio_play_sound(snd_cloak, 1, false)
            cloaked = 0
        }
        if ((!instance_exists(obj_enemy_spared)) && (!instance_exists(obj_enemy_down)))
        {
            if (image_alpha < 1)
                image_alpha += 0.05
        }
    }
    if (invisible == 1 && (!instance_exists(obj_speech_bubble)))
    {
        if (cloaked == 0)
        {
            audio_play_sound(snd_cloak, 1, false)
            cloaked = 1
        }
        if instance_exists(obj_target_choice)
        {
            with (obj_target_choice)
                miss = 1
        }
        if ((!instance_exists(obj_enemy_spared)) && (!instance_exists(obj_enemy_down)))
        {
            if (image_alpha > 0)
                image_alpha -= 0.05
        }
    }
}
else
{
    enemyquip = "Ew. How could you?"
    enemyinfo = "You can see him again."
    noshoot = 0
    if instance_exists(obj_enemy_spareable)
    {
        with (obj_enemy_spareable)
            instance_destroy()
    }
    sparemeter = 100
    invisible = 0
    if (cloaked == 1)
    {
        audio_play_sound(snd_cloak, 1, false)
        cloaked = 0
    }
    if ((!instance_exists(obj_enemy_spared)) && (!instance_exists(obj_enemy_down)))
    {
        if (image_alpha < 0.5)
            image_alpha += 0.05
    }
    if (!instance_exists(obj_jarate_effect))
        instance_create(x, y, obj_jarate_effect)
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
                    if (noshoot == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You try to do anything,#  but you can barely turn#  your head."
                        }
                    }
                    else if (invisible == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You search the room for#  Spy, but you just can't#  find him."
                        }
                    }
                    else if (issparing == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You want to look for Spy,#  but you realise he's just#  standing in front of you."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Spy is a word that rhymes#  with " + "\"" + "missed" + "\"" + ", so this#  will not work anymore."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    if (noshoot == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You try to do anything,#  but you can barely turn#  your head."
                        }
                    }
                    else if (invisible == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You look around for Spy.#* There he is! No, wait,#  that's just a spider."
                        }
                    }
                    else if (issparing == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You want to look for Spy,#  but you realise he's just#  standing in front of you."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Spy is a word that rhymes#  with " + "\"" + "missed" + "\"" + ", so this#  will not work anymore."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    if (noshoot == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You try to do anything,#  but you can barely turn#  your head."
                        }
                    }
                    else if (invisible == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You examine a dark shadow,#  but on closer inspection#  it's just a wild raccoon."
                        }
                    }
                    else if (issparing == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You want to look for Spy,#  but you realise he's just#  standing in front of you."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Spy is a word that rhymes#  with " + "\"" + "missed" + "\"" + ", so this#  will not work anymore."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

