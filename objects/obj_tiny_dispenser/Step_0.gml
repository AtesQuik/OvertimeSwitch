if (hit == 0)
{
    if (spd != 0)
    {
        if (spd > 0)
        {
            if (y < 250)
            {
                if (attacking == 0)
                    y += spd
                else
                    y += 0.5
            }
            else
                instance_destroy()
        }
        else if (y > -10)
        {
            if (attacking == 0)
                y += spd
            else
                y -= 0.5
        }
        else
            instance_destroy()
    }
    if (attacking == 1)
    {
        if (image_index == 6)
        {
            attacking = 0
            sprite_index = spr_dispenser_tiny
            image_index = 0
            image_speed = 0.2
            with (instance_create(x, y, obj_tiny_disp_bolt))
                damagedone = other.damagedone
            alarm[0] = irandom_range(30, 60)
        }
    }
    if (attacking == 0)
    {
        if (xspd != 0)
        {
            if (movedir == 0)
            {
                if (x < 195)
                    x += xspd
                else
                    movedir = 1
            }
            if (movedir == 1)
            {
                if (x > 125)
                    x -= xspd
                else
                    movedir = 0
            }
        }
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

