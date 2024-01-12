if (progress == 1 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    if (obj_view_parent.y < obj_db_disp6.y)
        obj_view_parent.y += 2
    else
    {
        progress = 2
        alarm[0] = 30
        with (obj_db_disp6)
            alarm[0] = 483
        alarm[1] = 2451
        with (instance_create(0, 0, obj_music_player))
            musictrack = 151
    }
}
if (progress == 3)
{
    obj_view_parent.x = obj_db_disp6.x
    obj_view_parent.y = obj_db_disp6.y
}
if (progress == 5)
{
    obj_db_disp6.image_speed = 0.2
    obj_db_disp6.sprite_index = spr_s_disp_talk
    progress = 6
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 7
        STR[0] = "* WOW.#* WHAT A SERENADE."
        STR[1] = "* WHAT A THRILLING#  CONCLUSION TO THIS#  WONDERFUL DATE."
        STR[2] = "* OH YES. THAT WAS THE DATE.#* IT'S ALL OVER NOW,#  BABY BLUE."
        STR[3] = "* YOU KNOW WHAT THAT MEANS?"
        STR[4] = "* IT'S TIME FOR OUR ROMANTIC#  KISS."
        STR[5] = "* SO, IF YOU'RE READY,#  THEN WE CAN"
        STR[6] = "* WE CAN"
        STR[7] = "* CAAAAAAAAAAAAAAAAAAAAAAAA#  NNNNNNNNNNNNNNNNNNNNNNNNNN"
    }
}
if (progress == 6 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 5)
    {
        with (obj_theater_foreground)
            opendoor = 1
    }
    if (obj_text_box.N < 7)
    {
        with (obj_text_box)
        {
            if (voicenow == 1)
                textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        }
    }
    else
        obj_db_disp6.image_speed = 0.6
}
if (progress == 6 && (!instance_exists(obj_text_box)))
{
    alarm[2] = 30
    progress = 7
    obj_db_disp6.image_speed = 0
}
if (progress == 8)
{
    progress = 9
    audio_play_sound(snd_fall, 1, false)
    obj_db_disp6.sprite_index = spr_s_disp_fall
}
if (progress == 9)
{
    if (obj_db_disp6.y < 290)
        obj_db_disp6.y += 3
    else
    {
        audio_play_sound(snd_close2, 1, false)
        progress = 10
        with (obj_db_disp6)
            instance_destroy()
        alarm[3] = 30
    }
}
if (progress == 11)
{
    progress = 12
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 8
        textvoice = 104
        FACESTR[0] = 674
        STR[0] = "* Haha!#* Take that, you cowardly#  little toaster!"
        FACESTR[1] = 664
        STR[1] = "* Hello once again!#* Eli is here to save#  the day!"
        FACESTR[2] = 665
        STR[2] = "* No need to thank me."
        FACESTR[3] = 674
        STR[3] = "* I shut him down#  manually, so now he#  won't annoy us anymo-"
        FACESTR[4] = 667
        STR[4] = "* Hey, wait a minute!#* Where is he going?#* HOW is he going?"
        FACESTR[5] = 666
        STR[5] = "* Get back here,#  Dispenser!"
        FACESTR[6] = 667
        STR[6] = "* That wasn't supposed#  to happen at all!"
        FACESTR[7] = 667
        STR[7] = "* Dreck!#* Okay, uh, wait here.#* I'll take care of this."
        FACESTR[8] = 667
        STR[8] = "* Just...do whatever#  you had planned!#* See you!"
    }
}
if (progress == 12 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 0)
    {
        with (obj_theater_foreground)
            eli = 1
    }
    if (obj_text_box.N == 1)
    {
        with (obj_theater_foreground)
            eli = 0
    }
}
if (progress == 12 && (!instance_exists(obj_text_box)))
{
    window_set_caption("OVERTIME")
    audio_play_sound(snd_close1, 1, false)
    with (obj_theater_foreground)
        opendoor = 0
    global.dbover = 1
    instance_destroy()
    with (obj_pro_stopped)
        instance_destroy()
}

