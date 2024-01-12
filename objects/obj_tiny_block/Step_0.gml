if (hit == 0)
{
    if (xspd != 0)
        x += xspd
    if (y < 240)
        y += spd
    else
        instance_destroy()
    if ((place_meeting(x, (y + 3), obj_soul_ball) || place_meeting(x, y, obj_soul_ball) || place_meeting(x, (y - 3), obj_soul_ball)) && hit == 0 && black == 0)
    {
        if (obj_soul_ball.intheair == 1)
        {
            hit = 1
            audio_play_sound(snd_step, 1, false)
        }
    }
}
else
{
    image_speed = 0
    attacking = 0
    if (image_alpha > 0)
    {
        image_alpha -= 0.1
        extrastuff += 0.1
    }
    else
        instance_destroy()
}

