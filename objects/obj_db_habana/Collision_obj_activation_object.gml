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
            MAXSTR = 5
            STR[0] = "* hiya! :3"
            STR[1] = "* do you like bread?"
            STR[2] = "* i do.#* me likie bread a lot."
            STR[3] = "* i'm actually a habana loaf."
            STR[4] = "* yeth.#* habbie loaf."
            STR[5] = "* now go eat gud bread!"
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
            STR[0] = "* bread."
        }
    }
}
