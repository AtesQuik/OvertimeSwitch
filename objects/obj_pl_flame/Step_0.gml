if (!audio_is_playing(snd_flamethrower))
    audio_play_sound(snd_flamethrower, 1, false)
if (progress == 0)
{
    if (image_xscale < 0.5)
        image_xscale += 0.025
    if (image_yscale < 1)
        image_yscale += 0.05
}
if (progress == 1)
{
    if (flamedir == 0)
    {
        if (x < 560)
            x += 2
        if (image_angle > 5)
            image_angle -= 1
        if (image_angle == 5 && x >= 560)
        {
            progress = 2
            alarm[1] = 60
        }
    }
    if (flamedir == 1)
    {
        if (x > 80)
            x -= 2
        if (image_angle < -5)
            image_angle += 1
        if (image_angle == -5 && x <= 80)
        {
            progress = 2
            alarm[1] = 60
        }
    }
}
if (progress == 3)
{
    if (image_xscale > 0.1)
        image_xscale -= 0.05
    if (image_yscale > 0.1)
        image_yscale -= 0.05
    if (image_xscale == 0.1 && image_yscale == 0.1)
        instance_destroy()
}

