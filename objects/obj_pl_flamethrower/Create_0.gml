audio_play_sound(snd_flamethrower_appear, 1, false)
progress = 0
image_yscale = 0.75
image_speed = 0
if (x > 320)
{
    gundir = 0
    image_xscale = 0.75
    image_angle = -90
}
else
{
    gundir = 1
    image_xscale = -0.75
    image_angle = 90
}

