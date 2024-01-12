if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 4
        textvoice = 104
        FACESTR[0] = 667
        STR[0] = "* No, no, no, no!"
        FACESTR[1] = 667
        STR[1] = "* Not the right!"
        FACESTR[2] = 671
        STR[2] = "* Why would I have ever#  said it was to the#  right?"
        FACESTR[3] = 672
        STR[3] = "* What was I thinking?"
        FACESTR[4] = 673
        STR[4] = "* It's clearly to the#  left, my mistake."
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        STR[0] = "* Click..."
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    instance_destroy()
    global.mccall2 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

