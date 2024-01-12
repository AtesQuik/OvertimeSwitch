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
            global.cashyouwillget += cashreceive
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
            global.scouthired = 1
            if (global.genocide == 1 && global.genocideaborted == 0)
            {
                global.scoutgenoquit = 1
                global.genocideaborted = 1
            }
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
if (global.genocide == 1)
{
    global.evadetime = 1
    alarm[3] = 1
}
else
{
    if (instance_exists(obj_evade_soul) && enemyhealth > 0 && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        if (blackalpha < 0.5)
            blackalpha += 0.05
    }
    else if (blackalpha > 0)
        blackalpha -= 0.05
    if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && global.evadetime > 1)
    {
        if (global.genocide == 1)
        {
            global.evadetime = 1
            alarm[3] = 1
        }
        else
        {
            attacking = 1
            if (sparemeter == 35)
            {
                alarm[3] = 10
                with (instance_create(irandom_range(125, 195), choose(110, 100, 90), obj_tiny_block))
                {
                    damagedone = other.enemyattack
                    spd = choose(2, 3)
                    xspd = choose(-0.5, 0, 0, 0.5)
                }
            }
            if (sparemeter == 30)
            {
                alarm[3] = 10
                with (instance_create(irandom_range(125, 195), choose(110, 100, 90), obj_tiny_block))
                {
                    black = choose(0, 1, 1, 1)
                    damagedone = other.enemyattack
                    spd = choose(2, 3)
                    xspd = choose(-0.5, 0, 0, 0.5)
                }
            }
            if (sparemeter == 25)
            {
                alarm[3] = 15
                if (dispthere == 0)
                {
                    dispthere = 1
                    with (instance_create(160, 115, obj_tiny_dispenser))
                    {
                        damagedone = other.enemyattack
                        xspd = 2
                        movedir = choose(0, 1)
                    }
                }
                with (instance_create(irandom_range(125, 195), choose(110, 100, 90), obj_tiny_block))
                {
                    black = choose(0, 1)
                    damagedone = other.enemyattack
                    spd = choose(2, 3)
                    xspd = choose(-0.5, 0, 0, 0.5)
                }
            }
            if (sparemeter == 20)
            {
                alarm[3] = global.evadetime
                with (instance_create(130, 150, obj_tiny_block))
                {
                    damagedone = other.enemyattack
                    black = 1
                }
                with (instance_create(145, 150, obj_tiny_block))
                    damagedone = other.enemyattack
                with (instance_create(160, 150, obj_tiny_block))
                {
                    damagedone = other.enemyattack
                    black = 1
                }
                with (instance_create(175, 150, obj_tiny_block))
                    damagedone = other.enemyattack
                with (instance_create(190, 150, obj_tiny_block))
                {
                    damagedone = other.enemyattack
                    black = 1
                }
                with (instance_create(irandom_range(130, 190), 135, obj_tiny_dispenser))
                {
                    damagedone = other.enemyattack
                    xspd = 4
                }
            }
            if (sparemeter == 15)
            {
                alarm[3] = 120
                with (instance_create(360, -10, obj_scout_legattack))
                    damagedone = other.enemyattack
                with (instance_create(-45, -70, obj_scout_legattack))
                    damagedone = other.enemyattack
            }
            if (sparemeter == 10)
            {
                alarm[3] = 120
                with (instance_create(355, -10, obj_scout_legattack))
                {
                    damagedone = other.enemyattack
                    nomove = 1
                }
                with (instance_create(-65, -10, obj_scout_legattack))
                {
                    damagedone = other.enemyattack
                    nomove = 1
                }
                with (instance_create(-40, -70, obj_scout_legattack))
                    damagedone = other.enemyattack
                with (instance_create(-360, -85, obj_scout_legattack))
                    damagedone = other.enemyattack
            }
            if (sparemeter == 5)
            {
                alarm[3] = 180
                with (instance_create(355, -150, obj_scout_legattack))
                {
                    spd = 2
                    damagedone = other.enemyattack
                    nomove = 1
                }
                with (instance_create(-65, -150, obj_scout_legattack))
                {
                    spd = 2
                    damagedone = other.enemyattack
                    nomove = 1
                }
                with (instance_create(choose(-45, 360), -90, obj_scout_legattack))
                {
                    spd = 2
                    damagedone = other.enemyattack
                }
                with (instance_create(330, -10, obj_scout_legattack))
                {
                    spd = 2
                    damagedone = other.enemyattack
                    nomove = 1
                }
                with (instance_create(330, -30, obj_scout_legattack))
                {
                    spd = 2
                    damagedone = other.enemyattack
                    nomove = 1
                }
                with (instance_create(160, 100, obj_tiny_dispenser))
                {
                    damagedone = other.enemyattack
                    xspd = 2
                    spd = 1
                    movedir = choose(0, 1)
                }
            }
            if (sparemeter == 0)
                lastconvo = 2
        }
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
    global.scoutkilled = 1
    global.mcprogress = 3
    global.increaselv = 1
    script_execute(scr_battle_end)
}
if (global.genocide == 0 && enemyhealth > 0 && (!(place_meeting(x, y, obj_enemy_spareable))) && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))))
{
    if ((!instance_exists(obj_speech_bubble)) && (!instance_exists(obj_evade_ground)) && (!instance_exists(obj_evade_to_box)))
    {
        if (nochange == 1)
        {
            nochange = 0
            alarm[11] = 30
        }
    }
    if (shakey == 0 && shakex < 1)
        shakex += 0.25
    if (shakex == 1 && shakey < 1)
        shakey += 0.25
    if (shakey == 1 && shakex > 0)
        shakex -= 0.25
    if (shakex == 0 && shakey > 0)
        shakey -= 0.25
    if (headchange == 0)
    {
        if (headshake < 4)
            headshake += 0.2
        else
            headchange = 1
    }
    if (headchange == 1)
    {
        if (headshake > 0)
            headshake -= 0.2
        else
            headchange = 0
    }
    if (whichleg == 1)
    {
        if (legchange == 0)
        {
            if (leg1angle < 5)
                leg1angle += 0.5
            else
                legchange = 1
        }
        if (legchange == 1)
        {
            if (leg1angle > -5)
                leg1angle -= 0.5
            else
                legchange = 0
        }
    }
    if (whichleg == 2)
    {
        if (legchange == 0)
        {
            if (leg2angle < 5)
                leg2angle += 0.5
            else
                legchange = 1
        }
        if (legchange == 1)
        {
            if (leg2angle > -5)
                leg2angle -= 0.5
            else
                legchange = 0
        }
    }
}
if (global.soultype != 4)
    global.soultype = 4
if instance_exists(obj_speech_bubble)
{
    if (global.genocide == 0)
    {
        if (sparemeter == 35)
        {
            if (obj_speech_bubble.N == 0)
                heads = 0
            if (obj_speech_bubble.N == 1)
                heads = 5
        }
        if (sparemeter == 30)
        {
            if (obj_speech_bubble.N == 0)
                heads = 16
            if (obj_speech_bubble.N == 1)
                heads = 11
            if (obj_speech_bubble.N == 2)
                heads = 15
            if (obj_speech_bubble.N == 3)
                heads = 11
        }
        if (sparemeter == 25)
        {
            if (obj_speech_bubble.N == 0)
                heads = 0
            if (obj_speech_bubble.N == 1)
                heads = 4
            if (obj_speech_bubble.N == 2)
                heads = 16
        }
        if (sparemeter == 20)
        {
            if (obj_speech_bubble.N == 0)
                heads = 11
            if (obj_speech_bubble.N == 1)
                heads = 16
            if (obj_speech_bubble.N == 2)
                heads = 2
            if (obj_speech_bubble.N == 3)
                heads = 3
            if (obj_speech_bubble.N == 4)
                heads = 11
        }
        if (sparemeter == 15)
        {
            if (obj_speech_bubble.N == 0)
                heads = 11
            if (obj_speech_bubble.N == 1)
                heads = 11
            if (obj_speech_bubble.N == 2)
                heads = 15
            if (obj_speech_bubble.N == 3)
                heads = 16
            if (obj_speech_bubble.N == 4)
                heads = 16
            if (obj_speech_bubble.N == 5)
                heads = 15
        }
        if (sparemeter == 10)
        {
            if (obj_speech_bubble.N == 0)
                heads = 16
            if (obj_speech_bubble.N == 1)
                heads = 11
            if (obj_speech_bubble.N == 2)
                heads = 11
            if (obj_speech_bubble.N == 3)
                heads = 13
            if (obj_speech_bubble.N == 4)
                heads = 16
        }
        if (sparemeter == 5)
        {
            if (obj_speech_bubble.N == 0)
                heads = 16
            if (obj_speech_bubble.N == 1)
                heads = 16
            if (obj_speech_bubble.N == 2)
                heads = 16
            if (obj_speech_bubble.N == 3)
                heads = 11
            if (obj_speech_bubble.N == 4)
                heads = 13
        }
        if (sparemeter == 0)
        {
            legpose = 0
            whichleg = 0
            legchange = 0
            leg1 = 0
            leg1angle = 0
            leg2 = 0
            leg2angle = 0
            arm1 = 0
            arm1angle = 0
            arm2 = 0
            arm2angle = 0
            headshake = 0
            shakex = 1
            shakey = 1
            extraroom = 0
            if (obj_speech_bubble.N == 0)
                heads = 11
            if (obj_speech_bubble.N == 1)
                heads = 5
            if (obj_speech_bubble.N == 2)
                heads = 0
            if (obj_speech_bubble.N == 3)
                heads = 16
            if (obj_speech_bubble.N == 4)
                heads = 11
            if (obj_speech_bubble.N == 5)
                heads = 16
            if (obj_speech_bubble.N == 6)
                heads = 11
            if (obj_speech_bubble.N == 7)
                heads = 11
            if (obj_speech_bubble.N == 8)
                heads = 13
            if (obj_speech_bubble.N == 9)
                heads = 14
            if (obj_speech_bubble.N == 10)
                heads = 15
            if (obj_speech_bubble.N == 11)
                heads = 16
            if (obj_speech_bubble.N == 12)
                heads = 17
            if (obj_speech_bubble.N == 13)
                heads = 18
            if (obj_speech_bubble.N == 14)
                heads = 19
            if (obj_speech_bubble.N == 15)
                heads = 12
            if (obj_speech_bubble.N == 16)
                heads = 0
            if (obj_speech_bubble.N == 17)
                heads = 0
            if (obj_speech_bubble.N == 18)
                heads = 5
            if (obj_speech_bubble.N == 19)
                heads = 6
            if (obj_speech_bubble.N == 20)
                heads = 9
            if (obj_speech_bubble.N == 21)
                heads = 16
            if (obj_speech_bubble.N == 22)
                heads = 0
            if (obj_speech_bubble.N == 23)
                heads = 5
            if (obj_speech_bubble.N == 24)
                heads = 5
            if (obj_speech_bubble.N == 25)
                heads = 0
            if (obj_speech_bubble.N == 26)
                heads = 0
            if (obj_speech_bubble.N == 27)
                heads = 1
            if (obj_speech_bubble.N == 28)
                heads = 11
            if (obj_speech_bubble.N == 29)
                heads = 0
            if (obj_speech_bubble.N == 30)
                heads = 0
            if (obj_speech_bubble.N == 31)
                heads = 0
        }
    }
    if (global.genocide == 1 && enemyhealth > 0)
    {
        nochange = 1
        if (sparesyou == 1)
            heads = 11
        else
        {
            if (obj_speech_bubble.N == 0)
                heads = 5
            if (obj_speech_bubble.N == 1)
                heads = 7
            if (obj_speech_bubble.N == 2)
                heads = 3
            if (obj_speech_bubble.N == 3)
                heads = 9
            if (obj_speech_bubble.N == 4)
                heads = 6
            if (obj_speech_bubble.N == 5)
                heads = 5
            if (obj_speech_bubble.N == 6)
                heads = 5
            if (obj_speech_bubble.N == 7)
                heads = 0
            if (obj_speech_bubble.N == 8)
                heads = 11
            if (obj_speech_bubble.N == 9)
                heads = 13
            if (obj_speech_bubble.N == 10)
                heads = 12
            if (obj_speech_bubble.N == 11)
                heads = 11
            if (obj_speech_bubble.N == 12)
                heads = 11
            if (obj_speech_bubble.N == 13)
                heads = 11
            if (obj_speech_bubble.N == 14)
                heads = 15
            if (obj_speech_bubble.N == 15)
                heads = 16
            if (obj_speech_bubble.N == 16)
                heads = 15
            if (obj_speech_bubble.N == 17)
                heads = 17
            if (obj_speech_bubble.N == 18)
                heads = 16
            if (obj_speech_bubble.N == 19)
                heads = 15
            if (obj_speech_bubble.N == 20)
                heads = 16
            if (obj_speech_bubble.N == 21)
                heads = 14
            if (obj_speech_bubble.N == 22)
                heads = 17
            if (obj_speech_bubble.N == 23)
                heads = 18
            if (obj_speech_bubble.N == 24)
                heads = 18
            if (obj_speech_bubble.N == 25)
                heads = 19
            if (obj_speech_bubble.N == 26)
                heads = 12
            if (obj_speech_bubble.N == 27)
                heads = 0
            if (obj_speech_bubble.N == 28)
                heads = 15
            if (obj_speech_bubble.N == 29)
                heads = 16
            if (obj_speech_bubble.N == 30)
                heads = 17
        }
    }
    if (geno == 0 && enemyhealth <= 0 && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        nochange = 1
        if (obj_speech_bubble.N == 0)
            heads = 0
        if (obj_speech_bubble.N == 1)
            heads = 15
        if (obj_speech_bubble.N == 2)
            heads = 16
        if (obj_speech_bubble.N == 3)
            heads = 16
        if (obj_speech_bubble.N == 4)
            heads = 17
        if (obj_speech_bubble.N == 5)
            heads = 19
        if (obj_speech_bubble.N == 6)
            heads = 18
        if (obj_speech_bubble.N == 7)
            heads = 15
    }
    if (geno == 0 && enemyhealth <= 0 && place_meeting(x, y, obj_enemy_spareable))
    {
        nochange = 1
        heads = 10
    }
    if (geno == 1 && enemyhealth <= 0)
    {
        nochange = 1
        heads = 15
        if (obj_speech_bubble.N == 0)
            heads = 13
        if (obj_speech_bubble.N == 1)
            heads = 18
        if (obj_speech_bubble.N == 2)
            heads = 19
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
    alarm[5] = 1
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
    if (global.genocide == 0)
        alarm[5] = 1
    else
        alarm[7] = 1
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
                    if (global.genocide == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You ask Scout if he wants#  to cook with you, but now#  isn't the right time."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You ask Scout if he'd like#  to cook again, but he is#  too busy at the moment."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    if (global.genocide == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You want to remind Scout#  of your movie, but you#  two never starred in one."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You remind Scout of the#  movie you starred in. He#  feels proud, but that's it."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    if (global.genocide == 1)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You hum a melody you've#  never heard before,#  to no effect."
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You hum the song Scout sang#  for you. He's choked up,#  but remains professional."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

