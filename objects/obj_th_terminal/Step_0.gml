if instance_exists(obj_protagonist)
{
    if (obj_protagonist.x > (x - 20) && obj_protagonist.x < (x + 20))
    {
        if (offon == 0)
        {
            audio_play_sound(snd_battlemenu_move, 1, false)
            offon = 1
        }
    }
}

