if (global.zepheniahprogress == 0)
{
    with (obj_activation_object)
        instance_destroy()
    instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
    with (obj_pro_stopped)
        image_index = 1
    with (obj_protagonist)
        instance_destroy()
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 2
        STR[0] = "* (It looks like someone#  left a worn tophat on#  the floor.)"
        STR[1] = "* (Seems like it's#  resting on some kind#  of surfboard...)"
        STR[2] = "* (You reach down to#  pick up the hat.)"
    }
    global.zepheniahprogress = 1
}
