if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        textvoice = 104
        FACESTR[0] = 667
        STR[0] = "* I just watched all#  of that."
        FACESTR[1] = 666
        STR[1] = "* I am so sorry you had#  to spend more than#  10 seconds with him."
        FACESTR[2] = 664
        STR[2] = "* Don't worry.#* I'll try to help you#  with him later."
        FACESTR[3] = 664
        STR[3] = "* Goodbye for now!"
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
    global.dustbowlcall5 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

