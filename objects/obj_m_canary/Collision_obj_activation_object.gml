with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 3
        STR[0] = "* Hello. I'm a canary."
        STR[1] = "* Becoming a miner to mine#  ores all day was the second#  worst decision I ever made."
        STR[2] = "* What's the first one,#  you ask?"
        STR[3] = "* Take your kids#  to work day."
    }
}
