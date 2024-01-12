if (global.truehospitalprogress < 2)
{
    with (obj_activation_object)
        instance_destroy()
    if (progress == 0)
    {
        progress = 1
        alarm[0] = 30
        audio_play_sound(snd_button, 1, false)
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 2
            instance_destroy()
        }
    }
}
else if (!instance_exists(obj_text_box))
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (You do not want to go#  through that again.)"
    }
}
