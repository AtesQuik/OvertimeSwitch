if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 9
        textvoice = 104
        FACESTR[0] = 670
        if (global.mcencounter2 == 0)
            STR[0] = "* I know where you need#  to go next!"
        else
            STR[0] = "* HAHA!#* I've figured it out!"
        FACESTR[1] = 664
        STR[1] = "* Since you went left#  earlier, you now need#  to go..."
        FACESTR[2] = 667
        STR[2] = "* Wait, those machine#  sounds I hear over the#  phone..."
        FACESTR[3] = 670
        STR[3] = "* You've already#  continued without#  any of my help!"
        FACESTR[4] = 674
        STR[4] = "* My, that's very#  impressive."
        FACESTR[5] = 665
        STR[5] = "* I'll stop talking then,#  and let you figure#  things out yourself."
        FACESTR[6] = 664
        STR[6] = "* But before I go, I need#  to tell you that the#  exit door is locked!"
        FACESTR[7] = 664
        STR[7] = "* So if you want to leave#  the factory, you have#  to open it somehow."
        FACESTR[8] = 664
        STR[8] = "* There should be a#  computer panel#  explaining that."
        FACESTR[9] = 670
        STR[9] = "* Anyway, bye!"
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
    global.mccall5 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

