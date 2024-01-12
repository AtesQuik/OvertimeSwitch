with (obj_activation_object)
    instance_destroy()
if (global.genocide == 0)
{
    script_execute(scr_face_protagonist)
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 0
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* i think he wants you#  to follow him."
    }
}
else if (global.genocide == 1)
{
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 0
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* im warning you."
    }
}
