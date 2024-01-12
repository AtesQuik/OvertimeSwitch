with (obj_activation_object)
    instance_destroy()
script_execute(scr_face_protagonist)
if (progress == 0)
{
    progress = 1
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* "
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* "
    }
}
