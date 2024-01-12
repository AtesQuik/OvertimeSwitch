if instance_exists(obj_protagonist)
{
    disy = (obj_protagonist.y - y)
    disx = (x - obj_protagonist.x)
    if (obj_protagonist.y > y && disy >= 40)
        chasedirection = 0
    if (obj_protagonist.y < y && disy < -40)
        chasedirection = 2
    if (obj_protagonist.x > x && disx <= -40)
        chasedirection = 1
    if (obj_protagonist.x < x && disx > 40)
        chasedirection = 3
    move_towards_point(obj_protagonist.x, obj_protagonist.y, spd)
}
else
{
    instance_destroy()
    with (instance_create(x, y, obj_m_demowait2))
        image_index = other.chasedirection
}
if instance_exists(obj_protagonist)
{
    if (soundstep < 4)
        soundstep += 0.2
    else
        soundstep = 0
    if (soundstep == 1 || soundstep == 3)
        audio_play_sound(snd_knight, 1, false)
}

