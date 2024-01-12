if (!instance_exists(obj_pl_pyro_barrier2))
    instance_create(0, 0, obj_pl_pyro_barrier2)
if (!instance_exists(obj_pl_evade_soul))
    instance_create(320, 240, obj_pl_evade_soul)
bobupdown = 0
balloonx = 0
balloony = 0
backorforth = 0
blackness = 0
helpthere = 0
balloonicolor = 16711935
pyrocolor = make_color_rgb(50, 0, 38)
countdown = 915
progress = 0
if (irandom(1) == 0)
{
    with (instance_create(1140, 140, obj_pl_act))
    {
        xmovespd = -0.5
        spin = -1
    }
}
else
{
    with (instance_create(-500, 380, obj_pl_act))
    {
        xmovespd = 0.5
        spin = 1
    }
}
with (instance_create(-80, 100, obj_pl_gear))
{
    leftorright = 1
    movedirection = 1
}
with (instance_create(120, 140, obj_pl_gear))
{
    leftorright = 0
    image_angle = 45
    movedirection = 1
}
with (instance_create(320, 100, obj_pl_gear))
{
    leftorright = 1
    movedirection = 1
}
with (instance_create(520, 140, obj_pl_gear))
{
    leftorright = 0
    image_angle = 45
    movedirection = 1
}
with (instance_create(720, 100, obj_pl_gear))
{
    leftorright = 1
    movedirection = 1
}
with (instance_create(920, 140, obj_pl_gear))
{
    leftorright = 0
    image_angle = 45
    movedirection = 1
}
with (instance_create(-280, 380, obj_pl_gear))
    leftorright = 1
with (instance_create(-80, 340, obj_pl_gear))
{
    leftorright = 0
    image_angle = 45
}
with (instance_create(120, 380, obj_pl_gear))
    leftorright = 1
with (instance_create(320, 340, obj_pl_gear))
{
    leftorright = 0
    image_angle = 45
}
with (instance_create(520, 380, obj_pl_gear))
    leftorright = 1
with (instance_create(720, 340, obj_pl_gear))
{
    leftorright = 0
    image_angle = 45
}

