var __b__;
if (nomore == 0)
{
    CSTR = STR[N]
    POS += 0.4
    if (voicenow < 2)
        voicenow += 1
    else
        voicenow = 0
    if (POS < (string_length(CSTR) + 1))
    {
        if (voicenow == 0)
            audio_play_sound(textvoice, 1, false)
    }
}
__b__ = action_if_variable(crashed, 0, 0)
if __b__
{
    if (fadeout == 1)
    {
        if (blackness < 1)
            blackness += 0.05
        else
            fadeout = 0
    }
    if (fadein == 1 && fadeout == 0)
    {
        if (blackness > 0)
            blackness -= 0.05
        else
            fadein = 0
    }
    if (pan == 1)
    {
        if (pany < 240)
            pany += 1
        else
            pan = 0
    }
    if (countdown > 0)
        countdown -= 1
    else if (stopcount == 0)
    {
        stopcount = 1
        alarm[1] = 60
    }
    if (countdown == 2480)
        fadeout = 1
    if (countdown == 2458)
        image_index = 1
    if (countdown == 2460)
    {
        fadein = 1
        POS = 0
        N = 1
    }
    if (countdown == 2275)
        fadeout = 1
    if (countdown == 2258)
        image_index = 2
    if (countdown == 2260)
        fadein = 1
    if (countdown == 2255)
    {
        POS = 0
        N = 2
    }
    if (countdown == 2060)
        fadeout = 1
    if (countdown == 2044)
        image_index = 3
    if (countdown == 2045)
        fadein = 1
    if (countdown == 2041)
    {
        POS = 0
        N = 3
    }
    if (countdown == 1855)
        fadeout = 1
    if (countdown == 1837)
    {
        POS = 0
        N = 4
    }
    if (countdown == 1672)
    {
        POS = 0
        N = 5
    }
    if (countdown == 1668)
        image_index = 5
    if (countdown == 1670)
        fadein = 1
    if (countdown == 1505)
        fadeout = 1
    if (countdown == 1500)
    {
        POS = 0
        N = 6
    }
    if (countdown == 1483)
        image_index = 6
    if (countdown == 1485)
        fadein = 1
    if (countdown == 1260)
        fadeout = 1
    if (countdown == 1255)
        nomore = 1
    if (countdown == 1244)
        image_index = 7
    if (countdown == 1245)
        fadein = 1
    if (countdown == 1067)
        fadeout = 1
    if (countdown == 1048)
        image_index = 8
    if (countdown == 1050)
        fadein = 1
    if (countdown == 850)
        fadeout = 1
    if (countdown == 828)
        image_index = 9
    if (countdown == 830)
        fadein = 1
    if (countdown == 640)
        fadeout = 1
    if (countdown == 615)
    {
        lastimage = 1
        fadein = 1
    }
    if (countdown == 460)
        pan = 1
    if (countdown == 30)
    {
        with (obj_music_player)
            instance_destroy()
    }
    if (progress < 3)
    {
        if (keyboard_check_pressed(vk_anykey) && (!keyboard_check_pressed(vk_f4)))
            progress = 3
    }
    if (extrafade == 1)
    {
        if (blackness < 1)
            blackness += 0.05
        else
        {
            extrafade = 0
            progress = 1
        }
    }
    if (progress == 1)
    {
        audio_play_sound(snd_bambam, 1, false)
        progress = 2
        alarm[2] = 150
    }
    if (progress == 3)
    {
        progress = 4
        if (global.completedgenocide == 0)
        {
            if (global.controlsseen == 0)
                room_goto(rm_controls)
            else if (global.inputname == 1)
                room_goto(rm_menu)
            else
                room_goto(rm_inm_nameinput)
        }
        else
            alarm[4] = 1
    }
}
else
{
    if (fadeout == 1)
    {
        if (blackness < 1)
            blackness += 0.05
        else
            fadeout = 0
    }
    if (fadein == 1 && fadeout == 0)
    {
        if (blackness > 0)
            blackness -= 0.05
        else
            fadein = 0
    }
    if (pan == 1)
    {
        if (pany < 240)
            pany += 1
        else
            pan = 0
    }
    if (countdown > 0)
        countdown -= 1
    else if (stopcount == 0)
    {
        stopcount = 1
        alarm[1] = 60
    }
    if (countdown == 2480)
        fadeout = 1
    if (countdown == 2458)
        image_index = 1
    if (countdown == 2460)
    {
        fadein = 1
        POS = 0
        N = 8
    }
    if (countdown == 2374)
        progress = 1
    if (progress == 1)
    {
        nomore = 1
        progress = 2
        image_index = 11
        alarm[3] = 90
        with (obj_music_player)
            musictrack = 172
    }
}

