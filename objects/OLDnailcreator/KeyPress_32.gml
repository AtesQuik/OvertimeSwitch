if (nailchance == 0)
{
    with (instance_create(-100, irandom_range(-100, 580), obj_pl_nail))
    {
        xposition = irandom_range(320, 640)
        yposition = irandom_range(0, 480)
    }
}
if (nailchance == 1)
{
    with (instance_create(740, irandom_range(-100, 580), obj_pl_nail))
    {
        xposition = irandom_range(0, 320)
        yposition = irandom_range(0, 480)
    }
}
if (nailchance == 2)
{
    with (instance_create(irandom_range(-100, 740), -100, obj_pl_nail))
    {
        xposition = irandom_range(0, 640)
        yposition = irandom_range(0, 240)
    }
}
if (nailchance == 3)
{
    with (instance_create(irandom_range(-100, 740), 580, obj_pl_nail))
    {
        xposition = irandom_range(0, 640)
        yposition = irandom_range(240, 480)
    }
}
nailchance = choose(0, 1, 2, 3)

