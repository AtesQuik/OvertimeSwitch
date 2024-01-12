if (go == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.05
    else
    {
        go = 1
        audio_play_sound(snd_sword2, 1, false)
    }
}
if (go == 1)
{
    image_angle -= drunkx
    x += drunkx
    if (y > 150)
        y -= spd
    else
        go = 2
}
if (go == 2)
{
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
        instance_destroy()
}

