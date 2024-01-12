if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 2
        textvoice = 104
        FACESTR[0] = 673
        STR[0] = "* Sorry about that#  earlier."
        FACESTR[1] = 664
        STR[1] = "* To make up for it,#  I figured out where#  you need to go now!"
        FACESTR[2] = 664
        STR[2] = "* Just take the entrance#  to your left."
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
    global.mccall3 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

