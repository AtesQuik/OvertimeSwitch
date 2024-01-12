with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        textvoice = 82
        FACESTR[0] = 622
        STR[0] = "* Please just go back.#* I'll meet you#  in the surgery."
    }
}
