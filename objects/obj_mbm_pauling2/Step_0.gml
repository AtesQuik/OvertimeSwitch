if (progress == 1 && (!instance_exists(obj_text_box)))
{
    instance_destroy()
    global.mbmpauling = 2
    with (obj_pro_stopped)
        instance_destroy()
}

