if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 5
        textvoice = 104
        FACESTR[0] = 670
        STR[0] = "* You did it!#* Fantastisch!"
        FACESTR[1] = 664
        STR[1] = "* Now go back and do it#  again, but with closed#  eyes this time!"
        FACESTR[2] = 667
        STR[2] = "* Was?#* No?"
        FACESTR[3] = 666
        STR[3] = "* Grmbl..."
        FACESTR[4] = 666
        STR[4] = "* Fine..."
        FACESTR[5] = 674
        STR[5] = "* But you better impress#  me some more later!"
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
    global.dustbowlcall4 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

