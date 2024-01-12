if (action == 1)
{
    image_speed = 0
    if (looking == 0)
    {
        sprite_index = choose(451, 452)
        looking = 1
        alarm[1] = 15
    }
}
else if (action == 2)
{
    sprite_index = spr_gbirb_bird
    if (scale == 1)
    {
        if (!(place_meeting((x + 1), y, obj_evade_ground)))
        {
            x += 1
            image_speed = 0.5
        }
        else
        {
            image_speed = 0
            image_index = 0
            action = 0
            alarm[0] = 1
        }
    }
    if (scale == -1)
    {
        if (!(place_meeting((x - 1), y, obj_evade_ground)))
        {
            x -= 1
            image_speed = 0.5
        }
        else
        {
            image_speed = 0
            image_index = 0
            action = 0
            alarm[0] = 1
        }
    }
}

