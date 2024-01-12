var __b__;
__b__ = action_if_variable(global.hospitalprogress, 23, 2)
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
            STR[0] = "* (It's a medical machine#  that heals people#  within seconds.)"
            STR[1] = "* (What a revolution in#  modern medicine!)"
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
            STR[0] = "* (A very odd-looking#  machine. What does it do?)"
        }
    }
}
