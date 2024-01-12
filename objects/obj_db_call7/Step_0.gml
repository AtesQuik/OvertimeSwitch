if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 7
        textvoice = 104
        FACESTR[0] = 670
        STR[0] = "* Hooray!#* There you are!"
        FACESTR[1] = 667
        STR[1] = "* I wanted to call you,#  but something was#  blocking your signal!"
        FACESTR[2] = 672
        STR[2] = "* Anyway, not important!"
        FACESTR[3] = 673
        STR[3] = "* I just heard that our#  Spy is after you!"
        FACESTR[4] = 674
        STR[4] = "* Listen, once he turns#  invisible, you can#  make him visible again!"
        FACESTR[5] = 674
        STR[5] = "* You just need to coat#  him with any sort#  of liquid."
        FACESTR[6] = 667
        STR[6] = "* Uh, not sure if you#  have something like#  that, though."
        FACESTR[7] = 669
        STR[7] = "* Mist.#* I have to go again.#* See you!"
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
    global.dustbowlcall7 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

