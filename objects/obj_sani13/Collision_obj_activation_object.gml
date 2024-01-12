if (choicemade == 0 && leaving == 0)
{
    with (obj_activation_object)
        instance_destroy()
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        textvoice = 82
        FACESTR[0] = 620
        STR[0] = "* Can I help you?#              I want to#  No          go now"
        choices = 1
    }
}
scr_face_protagonist()
