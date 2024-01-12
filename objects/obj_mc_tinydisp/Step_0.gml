if (hit == 0)
{
    if instance_exists(obj_fake_evade_soul)
        x = obj_fake_evade_soul.x
    else if (x < 160)
        x += 3
}
if (hit == 0)
{
    if ((place_meeting(x, (y + 3), obj_soul_ball) || place_meeting(x, y, obj_soul_ball) || place_meeting(x, (y - 3), obj_soul_ball)) && hit == 0)
    {
        hit = 1
        audio_play_sound(snd_step, 1, false)
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

