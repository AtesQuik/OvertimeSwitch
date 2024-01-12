with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 5
        STR[0] = "* Hello, Miss Lady Sir!"
        STR[1] = "* Have you met my frog?#* It's the nicest one#  there is!"
        STR[2] = "* But he needs a name.#* Do you know a good name?"
        STR[3] = "* No, it's okay!#* I'll think of one myself."
        STR[4] = "* What about...#* " + "\"" + "Sir Froggington the 2nd" + "\"" + "?"
        STR[5] = "* No, that's not good.#* I'll keep thinking."
    }
}

