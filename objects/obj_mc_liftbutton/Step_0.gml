if (progress == 2)
{
    with (obj_pro_stopped)
        image_index = 0
    if (doormove < 20)
        doormove += 2
    else
    {
        progress = 3
        audio_play_sound(snd_elevator3, 1, false)
    }
}
if (progress == 3)
{
    progress = 4
    alarm[2] = 30
}
if (progress == 5)
{
    if ((!audio_is_playing(mus_elevator_last)) && (!audio_is_playing(mus_elevator)))
    {
        audio_play_sound(snd_blink, 1, false)
        progress = 6
        alarm[1] = 30
    }
}
if (progress == 7)
{
    with (obj_pro_stopped)
        image_index = 0
    if (doormove > 0)
        doormove -= 2
    else
    {
        progress = 8
        audio_play_sound(snd_elevator3, 1, false)
    }
}
if (progress == 8)
{
    if (global.meetingprogress < 1)
        global.meetingprogress = 1
    if (global.atthetop == 1)
    {
        with (obj_roomchange)
        {
            roomname = 155
            xpos = 80
            ypos = 160
            pdirection = 0
        }
    }
    else
    {
        with (obj_roomchange)
        {
            roomname = 143
            xpos = 640
            ypos = 100
            pdirection = 0
        }
    }
    progress = 0
    with (obj_pro_stopped)
        instance_destroy()
}

