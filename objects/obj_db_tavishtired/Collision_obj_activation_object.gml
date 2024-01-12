with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_db_drawbeer))
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* Seems very thirsty.#* If only you could give him#  some sort of drink..."
    }
}
else
{
    with (obj_db_drawbeer)
        instance_destroy()
    with (obj_protagonist)
    {
        instance_create(65, 124, obj_db_pourbeer)
        instance_destroy()
    }
    progress = 1
}
