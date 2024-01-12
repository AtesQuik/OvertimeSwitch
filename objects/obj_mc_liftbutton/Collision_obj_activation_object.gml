if (progress == 0)
{
    if (global.atthetop == 0)
        global.atthetop = 1
    else
        global.atthetop = 0
    progress = 1
    alarm[0] = 30
    audio_play_sound(snd_button, 1, false)
    with (obj_activation_object)
        instance_destroy()
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 2
        instance_destroy()
    }
}
