with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 2
        STR[0] = "* A lot of people tell me#  my name reminds them of#  someone they know."
        STR[1] = "* Seriously?#* Does " + "\"" + "Nass" + "\"" + " really sound#  like someone you know?"
        STR[2] = "* That's just ridiculous.#* What's next, I'm a time-#  travelling skeleton, too?"
    }
}

