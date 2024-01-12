var __b__;
__b__ = action_if_variable(global.kritzgone, 1, 0)
if __b__
{
    with (obj_activation_object)
        instance_destroy()
    if (!instance_exists(obj_text_box))
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 1
            STR[0] = "* (It's some sort of#  medical machine.)"
            STR[1] = "* (A certain important part#  seems to be missing.)"
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
            MAXSTR = 1
            STR[0] = "* (It's a medical machine#  that helps killing people#  within seconds.)"
            STR[1] = "* (What a revolution in#  modern warfare!)"
        }
    }
}
