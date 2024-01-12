if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 13
        textvoice = 104
        FACESTR[0] = 664
        STR[0] = "* Hello there!"
        FACESTR[1] = 664
        STR[1] = "* So, you must have#  reached the turrets#  already."
        FACESTR[2] = 665
        STR[2] = "* They're part of my,#  well...security system."
        FACESTR[3] = 664
        STR[3] = "* Normally, they'd shoot#  you on sight, unless you#  wore red clothes."
        FACESTR[4] = 664
        STR[4] = "* But you...#* You're wearing purple!#* Or violet."
        FACESTR[5] = 670
        STR[5] = "* So you might be able#  to get past them!"
        FACESTR[6] = 664
        STR[6] = "* Do you see their beams?"
        FACESTR[7] = 664
        STR[7] = "* You can walk#  straight through the#  orange ones."
        FACESTR[8] = 667
        STR[8] = "* If you aren't moving#  though, the turrets#  will start shooting."
        FACESTR[9] = 664
        STR[9] = "* The blue ones, however,#  won't detect you if#  you are NOT moving."
        FACESTR[10] = 667
        STR[10] = "* If they sense any form#  of movement however..."
        FACESTR[11] = 670
        STR[11] = "* It's like a rabid#  guard dog!"
        FACESTR[12] = 664
        STR[12] = "* Oh, and you can#  deactivate the turrets#  by hitting the lever.  "
        FACESTR[13] = 664
        STR[13] = "* Well, that's all I#  wanted to say for now.#* Bis gleich!"
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
    global.dustbowlcall1 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

