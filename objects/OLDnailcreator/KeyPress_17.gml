with (instance_create(irandom_range(-100, 740), irandom_range(-100, 580), obj_pl_nail))
{
    shotout = 1
    shotout = 1
    image_angle = point_direction(x, y, 320, 240)
    move_towards_point(320, 240, 10)
    alarm[0] = 30
}

