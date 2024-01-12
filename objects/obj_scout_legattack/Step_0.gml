if (hit == 0)
{
    if (yspd > 0)
    {
        if (y > 280)
            instance_destroy()
        else
            y += yspd
    }
    else if (y < -40)
        instance_destroy()
    else
        y += yspd
    if (nomove == 0)
    {
        if (legpos == 0)
        {
            if (goback == 0)
            {
                if (x > 325)
                    x -= spd
                else
                    goback = 1
            }
            if (goback == 1)
            {
                if (x < 410)
                    x += spd
                else
                    goback = 0
            }
        }
        if (legpos == 1)
        {
            if (goback == 0)
            {
                if (x < -5)
                    x += spd
                else
                    goback = 1
            }
            if (goback == 1)
            {
                if (x > -90)
                    x -= spd
                else
                    goback = 0
            }
        }
    }
    if ((place_meeting(x, (y + 3), obj_soul_ball) || place_meeting(x, y, obj_soul_ball) || place_meeting(x, (y - 3), obj_soul_ball)) && hit == 0)
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
    if (legpos == 0)
    {
        if (x < 500)
            x += 2
        else
            instance_destroy()
    }
    if (legpos == 1)
    {
        if (x > -240)
            x -= 2
        else
            instance_destroy()
    }
    if (upordown == 0)
    {
        if (image_angle > -10)
            image_angle -= 1
        else
            upordown = 1
    }
    if (upordown == 1)
    {
        if (image_angle < 10)
            image_angle += 1
        else
            upordown = 0
    }
}

