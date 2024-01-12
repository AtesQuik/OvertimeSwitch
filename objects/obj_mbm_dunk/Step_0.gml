if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 5
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* hey, its me again."
        FACESTR[1] = 634
        STR[1] = "* yeah, i said i didnt#  want to see you ever#  again."
        FACESTR[2] = 636
        STR[2] = "* but i cant see you#  right now, can i?"
        FACESTR[3] = 634
        STR[3] = "* that reminds me, its#  dark in that room,#  isnt it?"
        FACESTR[4] = 634
        STR[4] = "* let me turn on#  the lights for you."
        FACESTR[5] = 634
        STR[5] = "* oh, and one thing..."
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    audio_play_sound(snd_step, 1, false)
    alarm[2] = 60
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 5
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 0
        textvoice = 85
        FACESTR[0] = 637
        STR[0] = "* get dunked on."
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    instance_create(x, y, obj_mbm_exclamation)
    progress = 6
}
if (progress == 6 && (!instance_exists(obj_mbm_exclamation)))
{
    instance_create(x, y, obj_fake_soul_battlestart)
    progress = 7
}

