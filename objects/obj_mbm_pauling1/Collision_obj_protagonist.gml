with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
if (global.playername == "Jacket")
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* You're almost there."
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* Are you proud of yourself?"
    }
}
progress = 1
