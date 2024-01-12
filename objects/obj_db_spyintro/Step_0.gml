if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    alarm[1] = 30
}
if (progress == 3)
{
    with (obj_pro_stopped)
        image_index = 2
    with (obj_db_spy)
    {
        if (image_alpha < 1)
            image_alpha += 0.01
        else
        {
            other.progress = 4
            other.alarm[2] = 30
        }
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    progress = 6
    audio_play_sound(snd_disguise, 1, false)
}
if (progress == 6 && (!instance_exists(obj_text_box)))
{
    with (obj_db_spy)
    {
        if (secondalpha < 1)
            secondalpha += 0.01
        if (image_alpha > 0)
            image_alpha -= 0.01
        else
        {
            other.progress = 7
            other.alarm[3] = 30
        }
    }
}
if (progress == 8 && (!instance_exists(obj_text_box)))
{
    progress = 9
    audio_play_sound(snd_laugh, 1, false)
    alarm[4] = 30
}
if (progress == 10 && (!instance_exists(obj_text_box)))
{
    progress = 11
    global.dbprogress = 7
    script_execute(scr_random_encounter)
}

