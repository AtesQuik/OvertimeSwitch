if (progress == 0 && instance_exists(obj_protagonist))
{
    if (distance_to_object(obj_protagonist) < 32)
    {
        progress = 1
        with (obj_music_player)
            instance_destroy()
        global.textboxtop = 1
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 3
            instance_destroy()
        }
    }
}
if (progress == 1)
{
    progress = 3
    alarm[0] = 30
}
if (progress == 4 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
    if (obj_text_box.N == 9)
        sprite_index = spr_dispenser_point
    if (obj_text_box.N == 10)
        sprite_index = spr_dispenser_talk
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 5
    image_speed = 0
    image_index = 0
    alarm[1] = 30
}
if (progress == 6)
{
    if (x < 250)
        x += 2
    if (y > 35)
        y -= 3
    if (x >= 250 && y <= 40)
        progress = 8
}
if (progress == 7)
    progress = 8
if (progress == 8)
{
    progress = 9
    audio_play_sound(snd_fall, 1, false)
}
if (progress == 9)
{
    if (obj_db_bowl.y < obj_pro_stopped.y)
        obj_db_bowl.y += 3
    else
    {
        if audio_is_playing(snd_fall)
            audio_stop_sound(snd_fall)
        progress = 10
        audio_play_sound(snd_step, 1, false)
        alarm[3] = 30
    }
}
if (progress == 11 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 11 && (!instance_exists(obj_text_box)))
{
    with (obj_music_player)
        musictrack = 145
    alarm[5] = 1800
    with (obj_pro_stopped)
        instance_destroy()
    audio_play_sound(snd_close1, 1, false)
    with (obj_db_spikes1)
    {
        instance_destroy()
        instance_create(x, y, obj_db_spikes2)
    }
    instance_create(x, y, obj_db_disp4)
    instance_destroy()
}

