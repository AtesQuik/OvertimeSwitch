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
actnow = 0
balloonicolor = 16776960
pyrocolor = make_color_rgb(0, 16, 20)
countdown = 915
progress = 0
boworder = choose(0, 1, 2, 3)
with (instance_create(100, 100, obj_pl_bow))
{
    bownumber = 0
    image_angle = 315
}
with (instance_create(540, 100, obj_pl_bow))
{
    bownumber = 1
    image_angle = 225
}
with (instance_create(100, 380, obj_pl_bow))
{
    bownumber = 2
    image_angle = 45
}
with (instance_create(540, 380, obj_pl_bow))
{
    bownumber = 3
    image_angle = 135
}
action_set_alarm(60, 0)
action_set_alarm(720, 2)

