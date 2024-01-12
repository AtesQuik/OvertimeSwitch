if (distance_to_object(obj_protagonist) < 64 && progress == 0)
{
    progress = 1
    with (obj_music_player)
        instance_destroy()
    global.textboxtop = 0
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 2
        instance_destroy()
    }
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 10
        textvoice = 84
        FACESTR[0] = 632
        STR[0] = "* OI!"
        FACESTR[1] = 631
        STR[1] = "* Ya really have some#  manners!"
        FACESTR[2] = 631
        STR[2] = "* Ya think you can just#  ignore me, do ye?"
        FACESTR[3] = 631
        STR[3] = "* Well, lass, that's not#  how it works!"
        FACESTR[4] = 631
        STR[4] = "* What's wrong with ye?"
        FACESTR[5] = 632
        STR[5] = "* I demand an#  explanation for why#  you've done this!"
        FACESTR[6] = 631
        STR[6] = "* Do ya have a plan to#  kill everyone ye#  meet or somethin'?"
        FACESTR[7] = 627
        STR[7] = "* ..."
        FACESTR[8] = 629
        STR[8] = "* Oh."
        FACESTR[9] = 631
        STR[9] = "* W-well, I'll give ye#  one last chance to#  stop all of this!"
        FACESTR[10] = 629
        STR[10] = "* Alright?!?"
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    alarm[0] = 60
}
if (progress == 3 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 2)
        progress = 4
}
if (progress == 4)
{
    if (elevation < 96)
        elevation += 2
    else
        progress = 5
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    instance_destroy()
    with (obj_pro_stopped)
        instance_destroy()
    global.mbmballooney = 1
}

