if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 5
        textvoice = 104
        FACESTR[0] = 664
        STR[0] = "* So, have you entered#  the factory already?"
        FACESTR[1] = 664
        STR[1] = "* Alright!#* To progress, you need#  to go...uhm..."
        FACESTR[2] = 667
        STR[2] = "* Hmm..."
        FACESTR[3] = 672
        STR[3] = "* Uh..."
        FACESTR[4] = 673
        STR[4] = "* Hum..."
        FACESTR[5] = 672
        STR[5] = "* To the right.#* Yes.#* Definitely."
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
    global.mccall1 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

