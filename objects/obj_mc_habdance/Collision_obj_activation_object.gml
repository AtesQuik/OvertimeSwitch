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
            MAXSTR = 3
            STR[0] = "* you gotta hab"
            STR[1] = "* you gotta hab hab"
            STR[2] = "* you gotta hab hab#  habbie#  hab"
            STR[3] = "* do hab dance"
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
            STR[0] = "* do habbie dance."
        }
    }
}
