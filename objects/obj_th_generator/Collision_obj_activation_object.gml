if (global.truehospitalprogress < 8)
{
    with (obj_activation_object)
        instance_destroy()
    progress = 1
    if (!instance_exists(obj_text_box))
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 1
            STR[0] = "* (It's a power generator.)"
            STR[1] = "* (You turn it on...)"
        }
    }
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        instance_destroy()
    }
}
else
{
    with (obj_activation_object)
        instance_destroy()
    if (!instance_exists(obj_text_box))
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            STR[0] = "* (The power is already on.)"
        }
    }
}
