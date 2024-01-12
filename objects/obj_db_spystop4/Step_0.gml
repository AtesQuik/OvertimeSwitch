if (progress == 1 && (!instance_exists(obj_text_box)))
{
    with (obj_pro_stopped)
        instance_destroy()
    global.spystops = 4
    instance_destroy()
}

