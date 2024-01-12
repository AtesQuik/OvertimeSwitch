if (global.thkey1 == 1)
{
    if (start == 0)
    {
        start = 1
        if instance_exists(obj_menu)
        {
            with (obj_menu)
                instance_destroy()
        }
        if instance_exists(obj_text_box)
        {
            with (obj_text_box)
                instance_destroy()
        }
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = obj_protagonist.prodirection
            instance_destroy()
        }
        alarm[0] = 60
    }
}
