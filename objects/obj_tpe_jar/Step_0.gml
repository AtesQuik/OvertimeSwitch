if (progress == 0)
{
    if (distance_to_point(gotox, gotoy) <= 0)
    {
        speed = 0
        progress = 1
        fly = 0
        audio_play_sound(snd_shoot, 1, false)
    }
}
if (progress == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
        instance_destroy()
}
if (fly == 1)
{
    if (image_angle < 360)
        image_angle -= 10
    else
        image_angle = 0
}

