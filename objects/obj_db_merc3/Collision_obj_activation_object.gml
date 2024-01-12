with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 2
        STR[0] = "* I...#  need some time to think."
        STR[1] = "* I'll stay here for a while#  until I have calmed down."
        STR[2] = "* Thanks for checking#  up on me."
    }
}
