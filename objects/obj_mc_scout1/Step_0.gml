if (progress == 0)
{
    if (instance_exists(obj_protagonist) && (!instance_exists(obj_pro_stopped)))
    {
        instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
        with (obj_pro_stopped)
            image_index = 2
        with (obj_protagonist)
            instance_destroy()
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    global.mcprogress = 3
    instance_destroy()
    instance_create(x, y, obj_mc_scout2)
    with (obj_pro_stopped)
        instance_destroy()
}

