with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (It's locked.)"
    }
}
