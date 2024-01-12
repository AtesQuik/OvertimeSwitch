scr_face_protagonist()
if (global.hospitalprogress == 4)
{
    with (obj_activation_object)
        instance_destroy()
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        FACESTR[0] = 625
        textvoice = 82
        STR[0] = "* Nein, don't shoot me!#* The dummy!"
    }
}
