with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 4
        STR[0] = "* I miss my friend."
        STR[1] = "* He lives miles away#  from here.#* I wonder what he's up to?"
        STR[2] = "* The last thing I heard#  from him is that he wanted#  to join the mafia."
        STR[3] = "* Well, anything is better#  than being stuck in this#  cave for all ages."
        STR[4] = "* Literally! I am stuck to#  the floor here, I haven't#  moved in over 8 months!"
    }
}
