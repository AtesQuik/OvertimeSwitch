var __b__;
__b__ = action_if_variable(timestalked, 0, 0)
if __b__
{
    timestalked = 1
    with (obj_activation_object)
        instance_destroy()
    if (!instance_exists(obj_text_box))
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 2
            STR[0] = "* o"
            STR[1] = "* you found me!#* me likey."
            STR[2] = "* oki, see ya! :33"
        }
    }
}
else
{
    with (obj_activation_object)
        instance_destroy()
    if (!instance_exists(obj_text_box))
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 0
            STR[0] = "* miau!"
        }
    }
}
