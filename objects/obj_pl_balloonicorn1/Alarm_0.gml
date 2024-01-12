if (nailchance == 0)
{
    with (instance_create(-100, irandom_range(-100, 580), obj_pl_nail))
    {
        saved = other.saved
        xposition = irandom_range(320, 640)
        yposition = irandom_range(0, 480)
    }
}
if (nailchance == 1)
{
    with (instance_create(740, irandom_range(-100, 580), obj_pl_nail))
    {
        saved = other.saved
        xposition = irandom_range(0, 320)
        yposition = irandom_range(0, 480)
    }
}
if (nailchance == 2)
{
    with (instance_create(irandom_range(-100, 740), -100, obj_pl_nail))
    {
        saved = other.saved
        xposition = irandom_range(0, 640)
        yposition = irandom_range(0, 240)
    }
}
if (nailchance == 3)
{
    with (instance_create(irandom_range(-100, 740), 580, obj_pl_nail))
    {
        saved = other.saved
        xposition = irandom_range(0, 640)
        yposition = irandom_range(240, 480)
    }
}
if (actnow == 1 && (!instance_exists(obj_pl_act)))
{
    actnow = 2
    with (instance_create(choose(-100, 740), choose(-100, 580), obj_pl_act))
    {
        shotout = 1
        shotout = 1
        image_angle = point_direction(x, y, 320, 240)
        move_towards_point(320, 240, 12)
        alarm[0] = 30
    }
}
nailchance = choose(0, 1, 2, 3)
action_set_alarm(15, 0)

