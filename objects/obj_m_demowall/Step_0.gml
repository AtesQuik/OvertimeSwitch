if (progress == 0)
{
    if (y > 90)
        y -= 4
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    audio_play_sound(snd_close2, 1, false)
    sprite_index = spr_nh_tavish_stand
    image_speed = 0
    image_index = 2
    alarm[0] = 30
}
if instance_exists(obj_protagonist)
{
    if (obj_protagonist.y < (y + 10))
        depth = (obj_protagonist.depth - 1)
    else
        depth = 0
}

