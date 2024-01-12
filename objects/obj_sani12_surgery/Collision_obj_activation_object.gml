if (global.hospitalprogress == 20)
{
    global.textboxchoice = 0
    with (obj_activation_object)
        instance_destroy()
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 2
        textvoice = 82
        FACESTR[0] = 620
        STR[0] = "* Alright! I promised that#  I would show you my new#  invention,"
        FACESTR[1] = 620
        STR[1] = "* and here it is!"
        FACESTR[2] = 620
        STR[2] = "* Could you do me a favor#  and stand on that red#  target over there?"
    }
    global.hospitalprogress = 21
}
if (global.hospitalprogress == 21 && (!instance_exists(obj_text_box)))
{
    with (obj_activation_object)
        instance_destroy()
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        textvoice = 82
        FACESTR[0] = 620
        STR[0] = "* Stand on the big red#  target please!"
    }
}
scr_face_protagonist()
