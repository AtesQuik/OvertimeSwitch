if (distance_to_object(obj_protagonist) < 32 && global.hospitalprogress == 14)
{
    instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
    with (obj_pro_stopped)
        image_index = 2
    with (obj_protagonist)
        instance_destroy()
    with (obj_music_player)
        instance_destroy()
    global.textboxtop = 0
    global.hospitalprogress = 15
    alarm[0] = 30
}
if (global.hospitalprogress == 16 && (!instance_exists(obj_text_box)))
{
    alarm[1] = 30
    global.hospitalprogress = 17
}
if (global.hospitalprogress == 18 && (!instance_exists(obj_text_box)))
{
    sprite_index = spr_sani_left
    image_speed = 0.2
    x -= 2
    if place_meeting(x, y, obj_sani8_stop)
        global.hospitalprogress = 19
}
if (global.hospitalprogress == 19)
{
    sprite_index = spr_sani_up
    image_speed = 0.2
    y -= 2
    if (distance_to_object(obj_pro_stopped) > 164)
    {
        global.hospitalprogress = 20
        with (obj_pro_stopped)
            instance_destroy()
        with (obj_music_player)
            musictrack = 113
        instance_destroy()
    }
}

