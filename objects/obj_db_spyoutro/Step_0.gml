if (progress == 0 && (!instance_exists(obj_text_box)))
{
    if instance_exists(obj_protagonist)
    {
        with (obj_protagonist)
        {
            global.playerxpos = x
            global.playerypos = y
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 2
            instance_destroy()
        }
    }
    with (instance_create(global.playerxpos, 140, obj_db_spy))
        secondalpha = 1
    global.textboxtop = 1
    progress = 1
    alarm[0] = 60
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    audio_play_sound(snd_laugh, 1, false)
    alarm[1] = 30
}
if (progress == 4)
{
    with (obj_db_spy)
    {
        if (secondalpha > 0)
            secondalpha -= 0.05
        else
            other.progress = 5
    }
}
if (progress == 5)
{
    with (obj_pro_stopped)
        instance_destroy()
    progress = 6
    global.dbprogress = 8
    instance_destroy()
}

