if (progress == 0 && distance_to_object(obj_protagonist) < 80)
{
    with (obj_music_player)
        instance_destroy()
    audio_play_sound(snd_exclamation, 1, false)
    progress = 1
    image_index = 1
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 2
        instance_destroy()
    }
    alarm[0] = 30
}
if (progress == 2)
{
    if (image_index < 8)
        image_index += 0.25
    else
    {
        image_index = 8
        progress = 3
        alarm[2] = 60
    }
}

