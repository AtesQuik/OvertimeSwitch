if (bounce == 0)
{
    move_towards_point(irandom_range(0, 320), 0, 12)
    bounce = 1
    with (obj_dell_evade_floor)
    {
        if (image_angle > -35)
            image_angle -= 1
    }
}
