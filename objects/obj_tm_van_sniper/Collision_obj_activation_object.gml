with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        textvoice = 96
        MAXSTR = 0
        FACESTR[0] = 651
        STR[0] = "* Oh, you want me to#  take you to Dustbowl?#  Yes         No"
        choices = 1
    }
}
