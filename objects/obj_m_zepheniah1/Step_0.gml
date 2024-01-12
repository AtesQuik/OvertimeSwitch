var __b__;
__b__ = action_if_variable(global.mineprogress, 3, 2)
if __b__
    action_kill_object()
else
{
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 0
        instance_destroy()
    }
    if (progress == 1 && (!instance_exists(obj_text_box)))
    {
        progress = 2
        audio_play_sound(snd_disappear, 1, false)
    }
    if (progress == 2)
    {
        if (transparent > 0)
            transparent -= 0.02
        else
            progress = 3
    }
    if (progress == 3)
    {
        with (obj_pro_stopped)
            instance_destroy()
        global.mineprogress = 4
        instance_destroy()
    }
}

