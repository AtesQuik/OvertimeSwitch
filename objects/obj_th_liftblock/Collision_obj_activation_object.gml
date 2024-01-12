with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (The lift is out of power.)#* (You'll have to turn it on#  if you want to go back.)"
    }
}
