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
    if (!audio_is_playing(mus_elevator))
    {
        global.textboxtop = 0
        audio_play_sound(snd_phone, 1, false)
        progress = 6
        alarm[3] = 30
    }
}
if (progress == 7 && (!instance_exists(obj_text_box)))
{
    progress = 8
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 9
        textvoice = 83
        FACESTR[0] = 627
        STR[0] = "* Oi luv!#* Don't ask how I got#  this number."
        FACESTR[1] = 627
        STR[1] = "* Feel satisfied now?"
        FACESTR[2] = 629
        STR[2] = "* Well, that was all#  I could do."
        FACESTR[3] = 627
        STR[3] = "* Go on now.#* You've got a mission#  to finish, don't ya?"
        FACESTR[4] = 629
        STR[4] = "* I think this is#  goodbye for real now."
        FACESTR[5] = 627
        STR[5] = "* It has been fun."
        FACESTR[6] = 629
        STR[6] = "* But honestly..."
        FACESTR[7] = 628
        STR[7] = "* I dun' wanna see yer#  face for quite some#  time now."
        FACESTR[8] = 630
        STR[8] = "* No offense!"
        FACESTR[9] = 627
        STR[9] = "* 'ave a good one,#  and goodbye!"
    }
}
if (progress == 8 && (!instance_exists(obj_text_box)))
{
    progress = 9
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* Click..."
    }
}
if (progress == 9 && (!instance_exists(obj_text_box)))
{
    audio_play_sound(snd_blink, 1, false)
    progress = 10
    alarm[1] = 30
}
if (progress == 11)
{
    with (obj_pro_stopped)
        image_index = 0
    if (doormove > 0)
        doormove -= 2
    else
    {
        progress = 12
        audio_play_sound(snd_elevator3, 1, false)
    }
}
if (progress == 12)
{
    with (obj_roomchange)
    {
        roomname = 155
        xpos = 80
        ypos = 160
        pdirection = 0
    }
    with (obj_pro_stopped)
        instance_destroy()
    global.truehospitalprogress = 9
}

