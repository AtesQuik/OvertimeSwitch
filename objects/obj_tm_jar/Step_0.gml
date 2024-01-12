if (image_alpha < 1)
    image_alpha += 0.05
else if (fly == 0)
{
    fly = 1
    move_towards_point(global.soulxposition, global.soulyposition, spd)
    audio_play_sound(snd_shoot, 1, false)
    alarm[0] = 30
}
if (fly == 1)
{
    if (image_angle < 360)
        image_angle += 10
    else
        image_angle = 0
}

