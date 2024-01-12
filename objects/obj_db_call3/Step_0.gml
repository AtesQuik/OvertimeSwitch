if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 8
        textvoice = 104
        FACESTR[0] = 669
        STR[0] = "* Hello?#* Can I get a large#  pepperoni pizza..."
        FACESTR[1] = 664
        STR[1] = "* Haha!#* Just kidding."
        FACESTR[2] = 674
        STR[2] = "* How did that joke#  make you feel?"
        FACESTR[3] = 667
        STR[3] = "* Wait, actually, are#  you in the other#  turret room?"
        FACESTR[4] = 670
        STR[4] = "* Oh, wunderbar!#* You're very fast."
        FACESTR[5] = 665
        STR[5] = "* Good luck with those."
        FACESTR[6] = 664
        STR[6] = "* They're the newest#  edition of the Mann#  Co. security system!"
        FACESTR[7] = 665
        STR[7] = "* Well, I am sure you#  will find a way."
        FACESTR[8] = 664
        STR[8] = "* Auf Wiedersehen!"
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
    global.dustbowlcall3 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

