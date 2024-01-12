if (reverse == 0)
{
    if (sdirection == 0)
    {
        y += spd
        x += random_range(((-global.drunk) / 2), (global.drunk / 2))
        image_angle = (0 + random_range((-global.drunk), global.drunk))
    }
    if (sdirection == 1)
    {
        x += spd
        y += random_range(((-global.drunk) / 2), (global.drunk / 2))
        image_angle = (90 + random_range((-global.drunk), global.drunk))
    }
    if (sdirection == 2)
    {
        y -= spd
        x += random_range(((-global.drunk) / 2), (global.drunk / 2))
        image_angle = (180 + random_range((-global.drunk), global.drunk))
    }
    if (sdirection == 3)
    {
        x -= spd
        y += random_range(((-global.drunk) / 2), (global.drunk / 2))
        image_angle = (270 + random_range((-global.drunk), global.drunk))
    }
}
else
{
    if (sdirection == 0)
    {
        y += spd
        x += random_range(((-global.drunk) / 2), (global.drunk / 2))
        image_angle = (180 + random_range((-global.drunk), global.drunk))
    }
    if (sdirection == 1)
    {
        x += spd
        y += random_range(((-global.drunk) / 2), (global.drunk / 2))
        image_angle = (270 + random_range((-global.drunk), global.drunk))
    }
    if (sdirection == 2)
    {
        y -= spd
        x += random_range(((-global.drunk) / 2), (global.drunk / 2))
        image_angle = (0 + random_range((-global.drunk), global.drunk))
    }
    if (sdirection == 3)
    {
        x -= spd
        y += random_range(((-global.drunk) / 2), (global.drunk / 2))
        image_angle = (90 + random_range((-global.drunk), global.drunk))
    }
}
if instance_exists(obj_evade_soul)
{
    if (distance_to_object(obj_evade_soul) < 32)
        image_index = 1
    else
        image_index = 0
}
if instance_exists(obj_tpe_evade_soul)
{
    if (distance_to_object(obj_tpe_evade_soul) < 32)
        image_index = 1
    else
        image_index = 0
}

