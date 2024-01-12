with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 4
        STR[0] = "* H-have you seen my brother?"
        STR[1] = "* Once we've entered this#  factory, he ran away to#  chase a frog..."
        STR[2] = "* I haven't found him yet."
        STR[3] = "* It's my fault we ended#  up here."
        STR[4] = "* Everything has been#  my fault."
    }
}
