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
            STR[0] = "* hOI! i'mma lobster!#* a FROZEN lobster!#* :3333"
            STR[1] = "* wanna help me put on#  outfits?#* no? alright! ;-;"
            STR[2] = "* see you!!!"
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
            STR[0] = "* meow!"
        }
    }
}
