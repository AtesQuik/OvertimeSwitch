if (progress == 0 && distance_to_object(obj_protagonist) < 32)
{
    global.textboxtop = 0
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        instance_destroy()
    }
    alarm[0] = 30
    progress = 1
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    image_index = 1
    alarm[1] = 30
}
if (progress == 4)
{
    progress = 5
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 4
        textvoice = 81
        FACESTR[0] = 692
        STR[0] = "* ..."
        FACESTR[1] = 688
        STR[1] = "* You are first person#  to get this far."
        FACESTR[2] = 693
        STR[2] = "* ..."
        FACESTR[3] = 688
        STR[3] = "* You ready?"
        FACESTR[4] = 688
        STR[4] = "* Let us do this."
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    progress = 6
    global.meetingprogress = 4
    script_execute(scr_random_encounter)
}

