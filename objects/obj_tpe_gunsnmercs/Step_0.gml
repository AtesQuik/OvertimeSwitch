if (progress == 0)
{
    if (guiprogress == 0)
    {
        if (guialpha < 1)
            guialpha += 0.05
        else
            guiprogress = 1
    }
    if (guiprogress == 1)
    {
        if (POS < (string_length(textstring) + 1))
        {
            POS += 1
            audio_play_sound(snd_text_battle, 1, false)
        }
        if keyboard_check_pressed(global.rightkey)
        {
            if (guix < 3)
            {
                audio_play_sound(snd_battlemenu_move, 1, false)
                guix += 1
            }
        }
        if keyboard_check_pressed(global.leftkey)
        {
            if (guix > 0)
            {
                audio_play_sound(snd_battlemenu_move, 1, false)
                guix -= 1
            }
        }
        if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
        {
            POS = 0
            audio_play_sound(snd_battlemenu_select, 1, false)
            guiprogress = 2
            if (guix == 0)
                textstring = "* But there was no one#  to fight."
            if (guix == 1)
                textstring = "* But there was no one#  to act upon."
            if (guix == 2)
                textstring = "* But there was no one#  to use items for."
            if (guix == 3)
                textstring = "* But there was no one#  to show mercy to."
        }
    }
    if (guiprogress == 2)
    {
        if (POS < (string_length(textstring) + 1))
        {
            POS += 1
            audio_play_sound(snd_text_battle, 1, false)
        }
        else
        {
            guiprogress = 3
            alarm[0] = 60
        }
    }
}
if (progress == 0)
{
    counter += 1
    if (counter == 680)
        progress = 1
}
if (progress == 1)
{
    counter = 0
    with (obj_tpe_ballooney2)
        rainbow = 1
    instance_create(x, y, obj_tpe_background)
    with (instance_create(0, 0, obj_endbox))
    {
        endstring = other.textstring
        POS = other.POS
    }
    progress = 2
}
if (progress == 3)
{
    window_set_caption("Over Time")
    if (guialpha > 0)
        guialpha -= 0.05
    else
        progress = 4
    if (!instance_exists(obj_tpe_soulmove))
    {
        if (guix == 0)
            instance_create(24, 226, obj_tpe_soulmove)
        if (guix == 1)
            instance_create(100, 226, obj_tpe_soulmove)
        if (guix == 2)
            instance_create(180, 226, obj_tpe_soulmove)
        if (guix == 3)
            instance_create(258, 226, obj_tpe_soulmove)
    }
}
if (progress == 4)
{
    progress = 5
    with (instance_create(obj_tpe_ballooney2.x, obj_tpe_ballooney2.y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 4
        STR[0] = "I know you're#confused, luv,#I am too."
        STR[1] = "From what I can#understand, your#machine is making#you go back in time."
        STR[2] = "Why?#I dunno."
        STR[3] = "I just hope you#don't have to fight#everyone all over#again..."
        STR[4] = "Oh you gotta be#******* kidding me!"
    }
}
if (progress == 5 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        obj_tpe_ballooney2.image_index = 2
    if (obj_speech_bubble_noevade.N == 1)
        obj_tpe_ballooney2.image_index = 0
    if (obj_speech_bubble_noevade.N == 3)
        obj_tpe_ballooney2.image_index = 2
    if (obj_speech_bubble_noevade.N == 4)
        obj_tpe_ballooney2.image_index = 1
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_ballooney2.image_index = 0
    progress = 6
    with (instance_create(-50, 65, obj_tpe_mercs))
    {
        merc = 0
        heads = 2
        masky = -40
    }
}
if (progress == 6)
{
    if (obj_tpe_ballooney2.x < 270)
        obj_tpe_ballooney2.x += 5
    if (obj_tpe_mercs.x < 160)
        obj_tpe_mercs.x += 5
    if (obj_tpe_ballooney2.x >= 270 && obj_tpe_mercs.x >= 160)
        progress = 7
}
if (progress == 7 && (!instance_exists(obj_tpe_death)))
{
    progress = 8
    with (instance_create((obj_tpe_mercs.x + 16), 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 81
        MAXSTR = 0
        STR[0] = "You are first person#to get this far."
    }
}
if (progress == 8 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 9
    savedprogress = 7
    global.soultype = 0
    if (!instance_exists(obj_tpe_evade_ground))
        instance_create(0, 0, obj_tpe_evade_ground)
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
}
if (progress == 9)
{
    with (instance_create(x, y, obj_tpe_danger_zones))
        damagedone = 4
    progress = 10
}
if (progress == 10)
{
    counter += 1
    if (counter == 300)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 301)
        progress = 11
}
if (progress == 11)
{
    counter = 0
    progress = 12
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create((obj_tpe_mercs.x + 16), 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 81
        MAXSTR = 0
        STR[0] = "Is last chance to#turn back."
    }
}
if (progress == 12 && (!instance_exists(obj_speech_bubble_noevade)))
{
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(160, 30, obj_tpe_bullet_follow2))
        damagedone = 4
    progress = 13
}
if (progress == 13)
{
    counter += 1
    if (counter == 300)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 301)
        progress = 14
}
if (progress == 14)
{
    counter = 0
    progress = 15
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create((obj_tpe_mercs.x + 16), 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 81
        MAXSTR = 0
        STR[0] = "Do not follow if you#are not ready."
    }
}
if (progress == 15 && (!instance_exists(obj_speech_bubble_noevade)))
{
    counter = 0
    if (obj_tpe_mercs.x < 400)
    {
        obj_tpe_mercs.x += 5
        if (obj_tpe_mercs.x > 180)
        {
            if (obj_tpe_ballooney2.y < 190)
                obj_tpe_ballooney2.y += 10
        }
    }
    else
    {
        progress = 16
        with (obj_tpe_ballooney2)
            move_towards_point(160, 60, 5)
        with (obj_tpe_mercs)
            instance_destroy()
    }
}
if (progress == 16)
{
    if (obj_tpe_ballooney2.x <= 160 && obj_tpe_ballooney2.y <= 60)
    {
        progress = 17
        obj_tpe_ballooney2.speed = 0
    }
}
if (progress == 17)
{
    progress = 18
    with (instance_create(obj_tpe_ballooney2.x, obj_tpe_ballooney2.y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 2
        STR[0] = "So this is just#goin' to continue#like that?"
        STR[1] = "Blimey...#Good luck, luv."
        STR[2] = "Oh, here comes the#next one!"
    }
}
if (progress == 18 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        obj_tpe_ballooney2.image_index = 2
    if (obj_speech_bubble_noevade.N == 2)
        obj_tpe_ballooney2.image_index = 0
}
if (progress == 18 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 19
    with (instance_create(-50, 71, obj_tpe_mercs))
    {
        merc = 1
        masky = -26
    }
}
if (progress == 19)
{
    if (obj_tpe_ballooney2.x < 270)
        obj_tpe_ballooney2.x += 5
    if (obj_tpe_mercs.x < 160)
        obj_tpe_mercs.x += 5
    else
        progress = 20
}
if (progress == 20 && (!instance_exists(obj_tpe_death)))
{
    progress = 21
    counter = 0
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 98
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "Would you like to go#out on an actual date#with me?"
    }
}
if (progress == 21 && (!instance_exists(obj_speech_bubble_noevade)))
{
    savedprogress = 20
    global.soultype = 4
    progress = 22
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(355, 355, obj_scout_legattack))
    {
        yspd = -1
        damagedone = 4
        nomove = 1
    }
    with (instance_create(-65, 355, obj_scout_legattack))
    {
        yspd = -1
        damagedone = 4
        nomove = 1
    }
    with (instance_create(-40, 295, obj_scout_legattack))
    {
        yspd = -1
        damagedone = 4
    }
    with (instance_create(-360, 280, obj_scout_legattack))
    {
        yspd = -1
        damagedone = 4
    }
}
if (progress == 22)
{
    counter += 1
    if (counter == 120)
    {
        with (instance_create(355, 355, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
            nomove = 1
        }
        with (instance_create(-65, 355, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
            nomove = 1
        }
        with (instance_create(-40, 295, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
        with (instance_create(-360, 280, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
    }
    if (counter == 240)
    {
        with (instance_create(355, 355, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
            nomove = 1
        }
        with (instance_create(-65, 355, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
            nomove = 1
        }
        with (instance_create(-40, 295, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
        with (instance_create(-360, 280, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
    }
    if (counter == 360)
    {
        with (instance_create(355, 355, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
            nomove = 1
        }
        with (instance_create(-65, 355, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
            nomove = 1
        }
        with (instance_create(-40, 295, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
        with (instance_create(-360, 280, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
    }
    if (counter == 420)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 421)
        progress = 23
}
if (progress == 23)
{
    progress = 24
    counter = 0
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 98
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "Someone who#actually cares if#I live or die..."
    }
}
if (progress == 24 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 25
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(360, 310, obj_scout_legattack))
    {
        yspd = -1
        damagedone = 4
    }
    with (instance_create(-45, 250, obj_scout_legattack))
    {
        yspd = -1
        damagedone = 4
    }
}
if (progress == 25)
{
    counter += 1
    if (counter == 120)
    {
        with (instance_create(360, 310, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
        with (instance_create(-45, 250, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
    }
    if (counter == 240)
    {
        with (instance_create(360, 310, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
        with (instance_create(-45, 250, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
    }
    if (counter == 360)
    {
        with (instance_create(360, 310, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
        with (instance_create(-45, 250, obj_scout_legattack))
        {
            yspd = -1
            damagedone = 4
        }
    }
    if (counter == 420)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 421)
        progress = 26
}
if (progress == 26)
{
    counter = 0
    progress = 27
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create((obj_tpe_mercs.x + 16), 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 98
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "You're not like the#others at all!"
    }
}
if (progress == 27 && (!instance_exists(obj_speech_bubble_noevade)))
{
    counter = 0
    if (obj_tpe_mercs.x < 400)
        obj_tpe_mercs.x += 5
    if (obj_tpe_ballooney2.y < 190)
        obj_tpe_ballooney2.y += 5
    if (obj_tpe_ballooney2.y >= 190 && obj_tpe_mercs.x >= 400)
    {
        progress = 28
        with (obj_tpe_mercs)
            instance_destroy()
    }
}
if (progress == 28)
{
    if (obj_tpe_ballooney2.y > 60)
        obj_tpe_ballooney2.y -= 5
    else
        progress = 29
}
if (progress == 29)
{
    progress = 30
    with (instance_create(95, obj_tpe_ballooney2.y, obj_speech_bubble_noevade))
    {
        bubbleshape = 4
        voiceon = 1
        textvoice = 83
        MAXSTR = 1
        STR[0] = "Uh...#I think ye got it#all under control."
        STR[1] = "I'll just think#about what's even#goin' on."
    }
}
if (progress == 30 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        obj_tpe_ballooney2.image_index = 2
    if (obj_speech_bubble_noevade.N == 1)
        obj_tpe_ballooney2.image_index = 0
}
if (progress == 30 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 32
    with (instance_create(-50, 60, obj_tpe_mercs))
    {
        merc = 2
        masky = -27
    }
}
if (progress == 32)
{
    if (obj_tpe_mercs.x < 160)
        obj_tpe_mercs.x += 5
    else
        progress = 33
}
if (progress == 33 && (!instance_exists(obj_tpe_death)))
{
    progress = 34
    counter = 0
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 97
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "I will keep working#for Mr. Mann though.#For as long as he's#alive, that is..."
    }
}
if (progress == 34 && (!instance_exists(obj_speech_bubble_noevade)))
{
    savedprogress = 33
    global.soultype = 3
    progress = 35
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(choose(-10, 330), choose(140, 160, 180), obj_spy_crab))
        damagedone = 4
    if (irandom(2) == 1)
    {
        with (instance_create(choose(-10, 330), choose(140, 160, 180), obj_spy_crab))
            damagedone = 4
    }
}
if (progress == 35)
{
    counter += 1
    if (counter == 15 || counter == 30 || counter == 45 || counter == 60 || counter == 75 || counter == 90 || counter == 105 || counter == 120 || counter == 135 || counter == 150 || counter == 165 || counter == 180 || counter == 195 || counter == 210 || counter == 225 || counter == 240 || counter == 255 || counter == 270 || counter == 285 || counter == 300 || counter == 315 || counter == 330 || counter == 345 || counter == 360 || counter == 375)
    {
        with (instance_create(choose(-10, 330), choose(140, 160, 180), obj_spy_crab))
            damagedone = 4
        if (irandom(2) == 1)
        {
            with (instance_create(choose(-10, 330), choose(140, 160, 180), obj_spy_crab))
                damagedone = 4
        }
    }
    if (counter == 390)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 391)
        progress = 36
}
if (progress == 36)
{
    progress = 37
    counter = 0
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 97
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "Do you suppose you#could afford#employing a spy?"
    }
}
if (progress == 37 && (!instance_exists(obj_speech_bubble_noevade)))
{
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    counter += 1
    if (counter == 15 || counter == 30 || counter == 45 || counter == 60 || counter == 75 || counter == 90 || counter == 105 || counter == 120 || counter == 135 || counter == 150 || counter == 165 || counter == 180 || counter == 195 || counter == 210 || counter == 225 || counter == 240 || counter == 255 || counter == 270 || counter == 285 || counter == 300 || counter == 315 || counter == 330 || counter == 345 || counter == 360 || counter == 375)
    {
        with (instance_create(choose(-10, 330), choose(140, 160, 180), obj_spy_crab))
            damagedone = 4
        if (irandom(2) == 1)
        {
            with (instance_create(choose(-10, 330), choose(140, 160, 180), obj_spy_crab))
                damagedone = 4
        }
    }
    if (counter == 390)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 391)
        progress = 38
}
if (progress == 38)
{
    progress = 39
    counter = 0
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 97
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "How about a dance?#A dance...of death?"
    }
}
if (progress == 39 && (!instance_exists(obj_speech_bubble_noevade)))
{
    counter = 0
    if (obj_tpe_mercs.x < 400)
        obj_tpe_mercs.x += 5
    if (obj_tpe_ballooney2.y < 190)
        obj_tpe_ballooney2.y += 5
    if (obj_tpe_ballooney2.y >= 190 && obj_tpe_mercs.x >= 400)
    {
        progress = 40
        with (obj_tpe_mercs)
            instance_destroy()
    }
}
if (progress == 40)
{
    if (obj_tpe_ballooney2.y > 60)
        obj_tpe_ballooney2.y -= 5
    else
        progress = 41
}
if (progress == 41 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 42
    with (instance_create(-50, 64, obj_tpe_mercs))
    {
        merc = 3
        masky = -42
    }
}
if (progress == 42)
{
    if (obj_tpe_mercs.x < 160)
        obj_tpe_mercs.x += 5
    else
        progress = 43
}
if (progress == 43 && (!instance_exists(obj_tpe_death)))
{
    progress = 44
    counter = 0
    with (instance_create((obj_tpe_mercs.x + 8), 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 99
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "But I just can't#kill someone who just#saved me life!"
    }
}
if (progress == 44 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 45
    savedprogress = 43
    global.soultype = 2
    global.drunk = 0
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
    {
        instance_create(160, 160, obj_tpe_evade_soul)
        instance_create(160, 160, obj_evade_shield)
    }
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    if (randomchance == 0)
    {
        with (instance_create(160, -15, obj_tavish_swordpiece))
        {
            reverse = 1
            spd = 6
            sdirection = 0
            damagedone = 4
        }
    }
    if (randomchance == 1)
    {
        with (instance_create(-15, 160, obj_tavish_swordpiece))
        {
            reverse = 1
            spd = 6
            sdirection = 1
            damagedone = 4
        }
    }
    if (randomchance == 2)
    {
        with (instance_create(160, 255, obj_tavish_swordpiece))
        {
            reverse = 1
            spd = 4
            sdirection = 2
            damagedone = 4
        }
    }
    if (randomchance == 3)
    {
        with (instance_create(335, 160, obj_tavish_swordpiece))
        {
            reverse = 1
            spd = 6
            sdirection = 3
            damagedone = 4
        }
    }
}
if (progress == 45)
{
    counter += 1
    if (counter == 15 || counter == 30 || counter == 45 || counter == 60 || counter == 75 || counter == 90 || counter == 105 || counter == 120 || counter == 135 || counter == 150 || counter == 165 || counter == 180 || counter == 195 || counter == 210 || counter == 225)
    {
        if (randomchance == 0)
        {
            with (instance_create(160, -15, obj_tavish_swordpiece))
            {
                reverse = 1
                spd = 6
                sdirection = 0
                damagedone = 4
            }
        }
        if (randomchance == 1)
        {
            with (instance_create(-15, 160, obj_tavish_swordpiece))
            {
                reverse = 1
                spd = 6
                sdirection = 1
                damagedone = 4
            }
        }
        if (randomchance == 2)
        {
            with (instance_create(160, 255, obj_tavish_swordpiece))
            {
                reverse = 1
                spd = 4
                sdirection = 2
                damagedone = 4
            }
        }
        if (randomchance == 3)
        {
            with (instance_create(335, 160, obj_tavish_swordpiece))
            {
                reverse = 1
                spd = 6
                sdirection = 3
                damagedone = 4
            }
        }
        randomchance = choose(0, 1, 2, 3)
    }
    if (counter == 240)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 241)
        progress = 46
}
if (progress == 46)
{
    counter = 0
    progress = 47
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create((obj_tpe_mercs.x + 8), 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 99
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "Ya didn't have to do#tha'...I was completely#vulnerable..."
    }
}
if (progress == 47 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 48
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
    {
        instance_create(160, 160, obj_tpe_evade_soul)
        instance_create(160, 160, obj_evade_shield)
    }
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    if (randomchance == 0)
    {
        with (instance_create(160, -15, obj_tavish_swordpiece))
        {
            reverse = 1
            spd = 5
            sdirection = 0
            damagedone = 4
        }
    }
    if (randomchance == 1)
    {
        with (instance_create(-15, 160, obj_tavish_swordpiece))
        {
            reverse = 1
            spd = 5
            sdirection = 1
            damagedone = 4
        }
    }
    if (randomchance == 2)
    {
        with (instance_create(160, 255, obj_tavish_swordpiece))
        {
            reverse = 1
            spd = 3
            sdirection = 2
            damagedone = 4
        }
    }
    if (randomchance == 3)
    {
        with (instance_create(335, 160, obj_tavish_swordpiece))
        {
            reverse = 1
            spd = 5
            sdirection = 3
            damagedone = 4
        }
    }
}
if (progress == 48)
{
    counter += 1
    if (counter == 15 || counter == 30 || counter == 45 || counter == 60 || counter == 75 || counter == 90 || counter == 105 || counter == 120 || counter == 135 || counter == 150 || counter == 165 || counter == 180 || counter == 195 || counter == 210 || counter == 225)
    {
        if (randomchance == 0)
        {
            with (instance_create(160, -15, obj_tavish_swordpiece))
            {
                reverse = 1
                spd = 5
                sdirection = 0
                damagedone = 4
            }
        }
        if (randomchance == 1)
        {
            with (instance_create(-15, 160, obj_tavish_swordpiece))
            {
                reverse = 1
                spd = 5
                sdirection = 1
                damagedone = 4
            }
        }
        if (randomchance == 2)
        {
            with (instance_create(160, 255, obj_tavish_swordpiece))
            {
                reverse = 1
                spd = 3
                sdirection = 2
                damagedone = 4
            }
        }
        if (randomchance == 3)
        {
            with (instance_create(335, 160, obj_tavish_swordpiece))
            {
                reverse = 1
                spd = 5
                sdirection = 3
                damagedone = 4
            }
        }
        randomchance = choose(0, 1, 2, 3)
    }
    if (counter == 240)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 241)
        progress = 49
}
if (progress == 49)
{
    counter = 0
    progress = 50
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create((obj_tpe_mercs.x + 8), 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 99
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "Ye think ye're#better than me,#missie?"
    }
}
if (progress == 50 && (!instance_exists(obj_speech_bubble_noevade)))
{
    counter = 0
    if (obj_tpe_mercs.x < 400)
    {
        obj_tpe_mercs.x += 5
        if (obj_tpe_mercs.x > 180)
        {
            if (obj_tpe_ballooney2.y < 190)
                obj_tpe_ballooney2.y += 10
        }
    }
    else
    {
        progress = 51
        with (obj_tpe_ballooney2)
            move_towards_point(160, 60, 5)
        with (obj_tpe_mercs)
            instance_destroy()
    }
}
if (progress == 51)
{
    if (obj_tpe_ballooney2.x <= 160 && obj_tpe_ballooney2.y <= 60)
    {
        progress = 52
        obj_tpe_ballooney2.speed = 0
    }
}
if (progress == 52)
{
    progress = 53
    with (instance_create(obj_tpe_ballooney2.x, obj_tpe_ballooney2.y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 6
        STR[0] = "I got it!#I know why you're#going back!"
        STR[1] = "Ye failed your#mission of killing#the Mann brothers!"
        STR[2] = "And because your#machine bonded so#much with you..."
        STR[3] = "...it shares your#same hopes and#dreams!"
        STR[4] = "So that failure made#it break."
        STR[5] = "Now it's trying to#go back so you have#to do everything#all over again!"
        STR[6] = "Until you can#actually kill#the Mann brothers!"
    }
}
if (progress == 53 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        obj_tpe_ballooney2.image_index = 3
    if (obj_speech_bubble_noevade.N == 2)
        obj_tpe_ballooney2.image_index = 0
}
if (progress == 53 && (!instance_exists(obj_speech_bubble_noevade)))
{
    if (blackisthere == 0)
    {
        blackisthere = 1
        with (obj_music_player)
            instance_destroy()
        instance_create(x, y, obj_tpe_blackscreen)
    }
}
if (progress == 54)
{
    if instance_exists(obj_tpe_background)
    {
        with (obj_tpe_background)
            phasetwo = 1
    }
    progress = 55
    with (instance_create(obj_tpe_ballooney2.x, obj_tpe_ballooney2.y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 6
        STR[0] = "'old on, what's#'appening now?"
        STR[1] = "Wait, this is after#you fell down in#the mines!"
        STR[2] = "It must have brought#ye back from life at#that point too!"
        STR[3] = "But...#Why is it still#going back?"
        STR[4] = "Seems a bit#excessive..."
        STR[5] = "Maybe it's trying to#force you to kill#the old doctor..."
        STR[6] = "So you can't be#a true pacifist!"
    }
}
if (progress == 55 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        obj_tpe_ballooney2.image_index = 1
    if (obj_speech_bubble_noevade.N == 1)
        obj_tpe_ballooney2.image_index = 0
    if (obj_speech_bubble_noevade.N == 3)
        obj_tpe_ballooney2.image_index = 2
    if (obj_speech_bubble_noevade.N == 5)
        obj_tpe_ballooney2.image_index = 0
    if (obj_speech_bubble_noevade.N == 6)
        obj_tpe_ballooney2.image_index = 3
}
if (progress == 55 && (!instance_exists(obj_speech_bubble_noevade)))
{
    if (blackisthere == 1 && instance_exists(obj_tpe_blackscreen))
    {
        blackisthere = 2
        obj_tpe_ballooney2.image_index = 0
        with (obj_tpe_blackscreen)
            progress = 2
    }
}
if (progress == 56)
{
    progress = 57
    with (instance_create(obj_tpe_ballooney2.x, obj_tpe_ballooney2.y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 1
        STR[0] = "Aaaaand we're back!"
        STR[1] = "Right, just 'old out#for a bit longer#while I figure out#what to do."
    }
}
if (progress == 57 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        obj_tpe_ballooney2.image_index = 3
    if (obj_speech_bubble_noevade.N == 1)
        obj_tpe_ballooney2.image_index = 0
}
if (progress == 57 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 58
    with (instance_create(0, 0, obj_music_player))
        musictrack = 197
    with (instance_create(-50, 64, obj_tpe_mercs))
    {
        merc = 4
        maskx = -9
        masky = -40
    }
}
if (progress == 58)
{
    if (obj_tpe_ballooney2.x < 270)
        obj_tpe_ballooney2.x += 5
    if (obj_tpe_mercs.x < 160)
        obj_tpe_mercs.x += 5
    else
        progress = 59
}
if (progress == 59 && (!instance_exists(obj_tpe_death)))
{
    progress = 60
    counter = 0
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 0
        STR[0] = "YOU WANT#TO BE MY#EMPLOYER!"
    }
}
if (progress == 60 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 61
    savedprogress = 59
    global.soultype = 1
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(-850, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-850, 175, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-710, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-570, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-570, 175, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-450, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-330, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-330, 170, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-235, 160, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-235, 145, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-130, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-130, 170, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-10, 160, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
    with (instance_create(-10, 145, obj_jane_rocket))
    {
        reverse = 1
        spd = 3
        damagedone = 4
    }
}
if (progress == 61)
{
    counter += 1
    if (counter == 390)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 391)
        progress = 62
}
if (progress == 62)
{
    progress = 63
    counter = 0
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 0
        STR[0] = "AFTER THIS#IS OVER...#I'LL BE A HERO!"
    }
}
if (progress == 63 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 64
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(-655, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-620, 160, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-490, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-460, 160, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-315, 175, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-315, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-255, 175, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-255, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-200, 175, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-200, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-155, 160, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-155, 150, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-105, 175, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-105, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-65, 160, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-65, 150, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-20, 175, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
    with (instance_create(-20, 185, obj_jane_rocket))
    {
        reverse = 1
        spd = 2
        damagedone = 4
    }
}
if (progress == 64)
{
    counter += 1
    if (counter == 480)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 481)
        progress = 65
}
if (progress == 65)
{
    progress = 66
    counter = 0
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 0
        STR[0] = "SOMEONE#HAS GOT TO#STOP YOU!"
    }
}
if (progress == 66 && (!instance_exists(obj_speech_bubble_noevade)))
{
    counter = 0
    if (obj_tpe_mercs.x < 400)
        obj_tpe_mercs.x += 5
    if (obj_tpe_ballooney2.y < 190)
        obj_tpe_ballooney2.y += 5
    if (obj_tpe_ballooney2.y >= 190 && obj_tpe_mercs.x >= 400)
    {
        progress = 67
        with (obj_tpe_mercs)
            instance_destroy()
    }
}
if (progress == 67)
{
    if (obj_tpe_ballooney2.y > 60)
        obj_tpe_ballooney2.y -= 5
    else
        progress = 68
}
if (progress == 68 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 69
    with (instance_create(-50, 64, obj_tpe_mercs))
    {
        merc = 5
        masky = -28
    }
}
if (progress == 69)
{
    if (obj_tpe_mercs.x < 160)
        obj_tpe_mercs.x += 5
    else
        progress = 70
}
if (progress == 70 && (!instance_exists(obj_tpe_death)))
{
    progress = 71
    counter = 0
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 96
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "I owe ya a favor."
    }
}
if (progress == 71 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 72
    savedprogress = 70
    global.soultype = 0
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(obj_tpe_evade_soul.x, (obj_tpe_evade_soul.y - 170), obj_tpe_jar_drop))
        damagedone = 4
    with (instance_create((obj_tpe_evade_soul.x + 130), (obj_tpe_evade_soul.y - 130), obj_tpe_jar_drop))
        damagedone = 4
    with (instance_create((obj_tpe_evade_soul.x + 170), obj_tpe_evade_soul.y, obj_tpe_jar_drop))
        damagedone = 4
    with (instance_create((obj_tpe_evade_soul.x + 130), (obj_tpe_evade_soul.y + 130), obj_tpe_jar_drop))
        damagedone = 4
    with (instance_create(obj_tpe_evade_soul.x, (obj_tpe_evade_soul.y + 170), obj_tpe_jar_drop))
        damagedone = 4
    with (instance_create((obj_tpe_evade_soul.x - 130), (obj_tpe_evade_soul.y + 130), obj_tpe_jar_drop))
        damagedone = 4
    with (instance_create((obj_tpe_evade_soul.x - 170), obj_tpe_evade_soul.y, obj_tpe_jar_drop))
        damagedone = 4
    with (instance_create((obj_tpe_evade_soul.x - 130), (obj_tpe_evade_soul.y - 130), obj_tpe_jar_drop))
        damagedone = 4
}
if (progress == 72)
{
    counter += 1
    if (counter == 120)
    {
        with (instance_create(obj_tpe_evade_soul.x, (obj_tpe_evade_soul.y - 170), obj_tpe_jar_drop))
            damagedone = 4
        with (instance_create((obj_tpe_evade_soul.x + 130), (obj_tpe_evade_soul.y - 130), obj_tpe_jar_drop))
            damagedone = 4
        with (instance_create((obj_tpe_evade_soul.x + 170), obj_tpe_evade_soul.y, obj_tpe_jar_drop))
            damagedone = 4
        with (instance_create((obj_tpe_evade_soul.x + 130), (obj_tpe_evade_soul.y + 130), obj_tpe_jar_drop))
            damagedone = 4
        with (instance_create(obj_tpe_evade_soul.x, (obj_tpe_evade_soul.y + 170), obj_tpe_jar_drop))
            damagedone = 4
        with (instance_create((obj_tpe_evade_soul.x - 130), (obj_tpe_evade_soul.y + 130), obj_tpe_jar_drop))
            damagedone = 4
        with (instance_create((obj_tpe_evade_soul.x - 170), obj_tpe_evade_soul.y, obj_tpe_jar_drop))
            damagedone = 4
        with (instance_create((obj_tpe_evade_soul.x - 130), (obj_tpe_evade_soul.y - 130), obj_tpe_jar_drop))
            damagedone = 4
    }
    if (counter == 240)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 241)
        progress = 73
}
if (progress == 73)
{
    progress = 74
    counter = 0
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 96
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "Cause I'm a bloody#professional at#what I do."
    }
}
if (progress == 74 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 75
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(choose(96, 208), 32, obj_tpe_crosshair))
        damagedone = 4
}
if (progress == 75)
{
    counter += 1
    if (counter == 240)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 241)
        progress = 76
}
if (progress == 76)
{
    progress = 77
    counter = 0
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 96
        bubbleshape = 2
        MAXSTR = 0
        STR[0] = "You're the only#person who fits that#description."
    }
}
if (progress == 77 && (!instance_exists(obj_speech_bubble_noevade)))
{
    counter = 0
    if (obj_tpe_mercs.x < 400)
        obj_tpe_mercs.x += 5
    if (obj_tpe_ballooney2.y < 190)
        obj_tpe_ballooney2.y += 5
    if (obj_tpe_ballooney2.y >= 190 && obj_tpe_mercs.x >= 400)
    {
        progress = 78
        with (obj_tpe_mercs)
            instance_destroy()
    }
}
if (progress == 78)
{
    if (obj_tpe_ballooney2.y > 60)
        obj_tpe_ballooney2.y -= 5
    else
        progress = 79
}
if (progress == 79 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 80
    with (instance_create(-50, 64, obj_tpe_mercs))
    {
        merc = 6
        masky = -30
    }
}
if (progress == 80)
{
    if (obj_tpe_mercs.x < 160)
        obj_tpe_mercs.x += 5
    else
        progress = 81
}
if (progress == 81 && (!instance_exists(obj_tpe_death)))
{
    progress = 82
    counter = 0
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "I keep hearts#beating...#I don't stop them..."
    }
}
if (progress == 82 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 83
    savedprogress = 81
    global.soultype = 0
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(50, 220, obj_tpe_bonesaw))
    {
        sawdirection = -1
        image_yscale = -1
        damagedone = 4
    }
}
if (progress == 83)
{
    counter += 1
    if (counter == 30)
    {
        with (instance_create(270, 220, obj_tpe_bonesaw))
        {
            sawdirection = 1
            image_yscale = 1
            damagedone = 4
        }
    }
    if (counter == 60)
    {
        with (instance_create(50, 220, obj_tpe_bonesaw))
        {
            sawdirection = -1
            image_yscale = -1
            damagedone = 4
        }
    }
    if (counter == 120)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 121)
        progress = 84
}
if (progress == 84)
{
    progress = 85
    counter = 0
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "I'm just a waste#of time."
    }
}
if (progress == 85 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 86
    if ((!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_death)))
        instance_create(160, 160, obj_tpe_evade_soul)
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (instance_create(choose(-80, 400), 224, obj_tpe_syringe_gun))
        dmg = 3
}
if (progress == 86)
{
    counter += 1
    if (counter == 180)
    {
        with (obj_enemy_attack_parent)
            instance_destroy()
    }
    if (counter == 181)
        progress = 87
}
if (progress == 87)
{
    progress = 88
    counter = 0
    if instance_exists(obj_tpe_evade_soul)
    {
        with (obj_tpe_evade_soul)
        {
            instance_create(x, y, obj_tpe_soulmove)
            instance_destroy()
        }
    }
    with (instance_create(obj_tpe_mercs.x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "Where are you#going with this?"
    }
}
if (progress == 88 && (!instance_exists(obj_speech_bubble_noevade)))
{
    counter = 0
    if (obj_tpe_mercs.x < 400)
        obj_tpe_mercs.x += 5
    if (obj_tpe_ballooney2.y < 190)
        obj_tpe_ballooney2.y += 5
    if (obj_tpe_ballooney2.y >= 190 && obj_tpe_mercs.x >= 400)
    {
        progress = 89
        with (obj_tpe_ballooney2)
            move_towards_point(160, 60, 5)
        with (obj_tpe_mercs)
            instance_destroy()
    }
}
if (progress == 89)
{
    if (obj_tpe_ballooney2.x <= 160 && obj_tpe_ballooney2.y <= 60)
    {
        progress = 90
        obj_tpe_ballooney2.speed = 0
    }
}
if (progress == 90)
{
    progress = 91
    obj_tpe_ballooney2.image_index = 2
    with (instance_create(obj_tpe_ballooney2.x, obj_tpe_ballooney2.y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 1
        STR[0] = "'old up.#Nothing makes sense#anymore."
        STR[1] = "Why is it still going#back?"
    }
}
if (progress == 91 && (!instance_exists(obj_speech_bubble_noevade)))
{
    with (obj_tpe_ballooney2)
    {
        image_index = 0
        rainbow = 2
    }
    progress = 92
    with (obj_music_player)
        instance_destroy()
}
if (progress == 92)
{
    if (blackscreen < 1)
        blackscreen += 0.025
    else
    {
        progress = 93
        with (obj_tpe_background)
            instance_destroy()
        with (instance_create(0, 0, obj_music_player))
            musictrack = 198
    }
}
if (progress == 93)
{
    if (flashbackalpha < 1)
        flashbackalpha += 0.01
    else
        progress = 94
    if (flashbackalpha > 0.4)
    {
        if (obj_tpe_ballooney2.x < 270)
            obj_tpe_ballooney2.x += 5
    }
}
if (progress == 94)
{
    progress = 95
    with (instance_create(95, obj_tpe_ballooney2.y, obj_speech_bubble_noevade))
    {
        bubbleshape = 4
        voiceon = 1
        textvoice = 83
        MAXSTR = 6
        STR[0] = "Wait, isn't that you#on tha' scooter?"
        STR[1] = "Oh no.#No, no, no!"
        STR[2] = "Your machine doesn't#want to reset anything."
        STR[3] = "It's trying to remove#itself from your#body."
        STR[4] = "By preventing the#accident you had."
        STR[5] = "So that it gets never#put inside of you!"
        STR[6] = "I have a plan...#It might be stupid#enough to work."
    }
}
if (progress == 95 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        obj_tpe_ballooney2.image_index = 2
    if (obj_speech_bubble_noevade.N == 3)
        obj_tpe_ballooney2.image_index = 0
    if (obj_speech_bubble_noevade.N == 5)
        obj_tpe_ballooney2.image_index = 2
    if (obj_speech_bubble_noevade.N == 6)
        obj_tpe_ballooney2.image_index = 0
}
if (progress == 95 && (!instance_exists(obj_speech_bubble_noevade)))
{
    if (obj_tpe_ballooney2.y > -50)
        obj_tpe_ballooney2.y -= 5
    else
    {
        instance_create(152, -25, obj_tpe_fight)
        progress = 96
    }
}
if (progress == 96)
{
    if instance_exists(obj_tpe_fight)
    {
        if (obj_tpe_fight.y < 150)
            obj_tpe_fight.y += 5
        if (obj_tpe_fight.y >= 40)
        {
            if (obj_tpe_ballooney2.y < 60)
                obj_tpe_ballooney2.y += 5
        }
    }
    if (obj_tpe_ballooney2.y >= 60 && obj_tpe_fight.y >= 150)
        progress = 97
}
if (progress == 97)
{
    progress = 98
    with (instance_create(95, obj_tpe_ballooney2.y, obj_speech_bubble_noevade))
    {
        bubbleshape = 4
        voiceon = 1
        textvoice = 83
        MAXSTR = 4
        STR[0] = "Take your Derringer!"
        STR[1] = "Shoot the tire of#your scooter!"
        STR[2] = "You gotta initiate#your OWN crash and#create a casual#loop!"
        STR[3] = "QUICK, LUV!#FIGHT FOR YOUR#LIFE!"
        STR[4] = "YOUR TIME'S#ALMOST OVER!"
    }
}
if (progress == 98 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 3)
        obj_tpe_ballooney2.image_index = 2
}
if (progress == 98 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 99
    if instance_exists(obj_tpe_soulmove)
    {
        with (obj_tpe_soulmove)
            instance_destroy()
    }
    with (obj_tpe_fight)
        progress = 1
}

