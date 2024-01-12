with (obj_activation_object)
    instance_destroy()
with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = 2
    instance_destroy()
}
if (progress == 0 && (!instance_exists(obj_text_box)))
{
    progress = 1
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 1
        STR[0] = "* It's a water cooler.#* You don't feel thirsty."
        STR[1] = "* The note on it reads:"
    }
}
