if (fly == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.05
    else
        fly = 1
    if instance_exists(obj_protagonist)
        image_angle = point_direction(x, y, obj_protagonist.x, obj_protagonist.y)
    else if instance_exists(obj_pro_stopped)
        image_angle = point_direction(x, y, (obj_pro_stopped.x - 20), obj_pro_stopped.y)
}
if (fly == 1)
{
    if (!audio_is_playing(snd_sword2))
        audio_play_sound(snd_sword2, 1, false)
    fly = 2
    if instance_exists(obj_protagonist)
        move_towards_point(obj_protagonist.x, obj_protagonist.y, spd)
    else if instance_exists(obj_pro_stopped)
        move_towards_point((obj_pro_stopped.x - 20), obj_pro_stopped.y, spd)
}
if (instance_exists(obj_fake_soul_battlestart) || instance_exists(obj_fake_soul_tobattle))
    instance_destroy()

