if (hit == 0)
{
    if (movedirection == 0)
    {
        if (x < 190)
            x += spd
        else
            movedirection = 1
    }
    if (movedirection == 1)
    {
        if (x > 130)
            x -= spd
        else
            movedirection = 0
    }
    if (place_meeting(x, (y + 1), obj_soul_ball) && hit == 0)
    {
        if (obj_soul_ball.intheair == 1)
        {
            hit = 1
            if (!audio_is_playing(snd_step))
                audio_play_sound(snd_step, 1, false)
        }
    }
}
else
{
    image_speed = 0
    attacking = 0
    sprite_index = spr_dispenser_tiny
    if (image_alpha > 0)
    {
        image_alpha -= 0.1
        extrastuff += 0.1
    }
    else
        instance_destroy()
}

