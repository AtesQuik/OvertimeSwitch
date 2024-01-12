if (progress == 0)
{
    if (instance_exists(obj_protagonist) && (!instance_exists(obj_pro_stopped)))
    {
        instance_create(440, 160, obj_pro_stopped)
        with (obj_pro_stopped)
            image_index = 1
        with (obj_protagonist)
            instance_destroy()
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    sprite_index = spr_jane_left
    image_speed = 0.5
    progress = 2
    path_start(path_jane_fly, 3, path_action_stop, 0)
}

