with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 3
        STR[0] = "* My mom bought me new#  sneakers for my birthday."
        STR[1] = "* I wanted to use them to#  sneak past these turrets,#  but they didn't work!"
        STR[2] = "* I just got shot!#* What kind of sneakers#  are these?"
        STR[3] = "* Stop laughing.#* I need to get to#  a hospital."
    }
}
