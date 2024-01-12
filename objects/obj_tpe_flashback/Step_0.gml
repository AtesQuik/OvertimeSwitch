if (progress == 0)
{
    if (introalpha < 1)
        introalpha += 0.05
    else
    {
        progress = 1
        alarm[0] = 120
    }
}
if (progress == 2)
{
    if (introalpha > 0)
        introalpha -= 0.05
    else
    {
        progress = 3
        introindex = 2
    }
}
if (progress == 3)
{
    if (introalpha < 1)
        introalpha += 0.05
    else
    {
        progress = 4
        alarm[1] = 120
    }
}
if (progress == 5)
{
    if (introalpha > 0)
        introalpha -= 0.05
    else
    {
        progress = 6
        introindex = 3
    }
}
if (progress == 6)
{
    if (introalpha < 1)
        introalpha += 0.05
    else
    {
        progress = 7
        alarm[2] = 120
    }
}
if (progress == 8)
{
    if (introalpha > 0)
        introalpha -= 0.05
    else
    {
        progress = 9
        introindex = 4
    }
}
if (progress == 9)
{
    if (introalpha < 1)
        introalpha += 0.05
    else
    {
        progress = 10
        alarm[3] = 120
    }
}
if (progress == 11)
{
    if (introalpha > 0)
        introalpha -= 0.05
    else
    {
        progress = 12
        introindex = 5
    }
}
if (progress == 12)
{
    if (introalpha < 1)
        introalpha += 0.05
    else
    {
        progress = 13
        alarm[4] = 120
    }
}
if (progress == 15)
{
    if (whitescreen < 1)
        whitescreen += 0.025
    else
    {
        progress = 17
        alarm[5] = 30
    }
}
if (progress == 18)
{
    if (whitescreen > 0)
        whitescreen -= 0.025
    else
        progress = 19
}
if (progress == 19)
{
    progress = 20
    with (instance_create(175, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 5
        STR[0] = "I can't believe it!"
        STR[1] = "Pyro?!?"
        STR[2] = "Ye actually carried#her to the doctor!"
        STR[3] = "Ye must really care#about 'er!"
        STR[4] = "Luv, seems like#you've made a very#good friend."
        STR[5] = "But...did it work?"
    }
}
if (progress == 20 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        ballooney = 2
    if (obj_speech_bubble_noevade.N == 3)
        ballooney = 0
    if (obj_speech_bubble_noevade.N == 4)
        ballooney = 3
    if (obj_speech_bubble_noevade.N == 5)
        ballooney = 0
}
if (progress == 20 && (!instance_exists(obj_speech_bubble_noevade)))
{
    ballooney = 0
    with (obj_music_player)
        instance_destroy()
    progress = 21
    alarm[6] = 30
}
if (progress >= 22)
{
    if (upordown == 0)
    {
        if (shaking > -4)
            shaking -= 1
        else
            upordown = 1
    }
    if (upordown == 1)
    {
        if (shaking < 4)
            shaking += 1
        else
            upordown = 0
    }
}
if (progress == 22)
{
    progress = 23
    with (instance_create(175, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 0
        STR[0] = "YES!#WE'RE GOING BACK#TO THE FUTURE!"
    }
}
if (progress == 23 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 24
    with (instance_create(0, 0, obj_music_player))
        musictrack = 201
    with (instance_create(420, 64, obj_tpe_mercs))
    {
        reverse = 1
        image_alpha = 0.5
        merc = 6
        masky = -30
    }
}
if (progress == 24)
{
    if (obj_tpe_mercs.x > -60)
        obj_tpe_mercs.x -= 4
    else
    {
        with (obj_tpe_mercs)
            instance_destroy()
        progress = 25
    }
}
if (progress == 25)
{
    progress = 26
    with (instance_create(400, 64, obj_tpe_mercs))
    {
        reverse = 1
        image_alpha = 0.5
        merc = 5
        masky = -28
    }
}
if (progress == 26)
{
    if (obj_tpe_mercs.x > -50)
        obj_tpe_mercs.x -= 5
    else
    {
        with (obj_tpe_mercs)
            instance_destroy()
        progress = 27
    }
}
if (progress == 27)
{
    progress = 28
    with (instance_create(400, 64, obj_tpe_mercs))
    {
        reverse = 1
        image_alpha = 0.5
        merc = 4
        maskx = -9
        masky = -40
    }
}
if (progress == 28)
{
    if (obj_tpe_mercs.x > -50)
        obj_tpe_mercs.x -= 5
    else
    {
        with (obj_tpe_mercs)
            instance_destroy()
        progress = 29
    }
}
if (progress == 29)
{
    progress = 30
    with (instance_create(380, 64, obj_tpe_mercs))
    {
        reverse = 1
        image_alpha = 0.5
        merc = 3
        masky = -42
    }
}
if (progress == 30)
{
    if (obj_tpe_mercs.x > -40)
        obj_tpe_mercs.x -= 7
    else
    {
        with (obj_tpe_mercs)
            instance_destroy()
        progress = 31
    }
}
if (progress == 31)
{
    progress = 32
    with (instance_create(380, 64, obj_tpe_mercs))
    {
        reverse = 1
        image_alpha = 0.5
        merc = 2
        masky = -27
    }
}
if (progress == 32)
{
    if (obj_tpe_mercs.x > -40)
        obj_tpe_mercs.x -= 14
    else
    {
        with (obj_tpe_mercs)
            instance_destroy()
        progress = 33
    }
}
if (progress == 33)
{
    progress = 34
    with (instance_create(420, 64, obj_tpe_mercs))
    {
        reverse = 1
        image_alpha = 0.5
        merc = 1
        masky = -26
    }
}
if (progress == 34)
{
    if (obj_tpe_mercs.x > -30)
        obj_tpe_mercs.x -= 30
    else
    {
        with (obj_tpe_mercs)
            instance_destroy()
        progress = 35
    }
}
if (progress == 35)
{
    progress = 36
    with (instance_create(420, 64, obj_tpe_mercs))
    {
        reverse = 1
        image_alpha = 0.5
        merc = 0
        heads = 2
        masky = -40
    }
}
if (progress == 36)
{
    if (obj_tpe_mercs.x > -30)
        obj_tpe_mercs.x -= 30
    else
    {
        with (obj_tpe_mercs)
            instance_destroy()
        progress = 37
    }
}
if (progress >= 23 && progress < 41)
{
    fbcounter += 1
    if (fbcounter == 465 && fadeout == 0)
        fadeout = 1
    if (fbcounter == 510)
    {
        with (obj_music_player)
            instance_destroy()
    }
}
if (fadeout == 1)
{
    if (whitescreen < 1)
        whitescreen += 0.05
    else
    {
        fadeout = 2
        alarm[8] = 90
    }
}
if (progress == 40)
{
    progress = 41
    room_goto(rm_tpe_finalgoodbye)
}

