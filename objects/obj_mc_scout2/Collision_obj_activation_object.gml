var __b__;
__b__ = action_if_variable(global.scoutgenoquit, 0, 0)
if __b__
{
    with (obj_activation_object)
        instance_destroy()
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 98
        MAXSTR = 0
        FACESTR[0] = 680
        STR[0] = "* Come on, you've got#  stuff to do."
    }
}
else
{
    with (obj_activation_object)
        instance_destroy()
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 98
        MAXSTR = 0
        FACESTR[0] = 682
        STR[0] = "* Please just leave."
    }
}
