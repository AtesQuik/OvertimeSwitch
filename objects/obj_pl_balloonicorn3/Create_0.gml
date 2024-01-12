instance_create(200, 0, obj_pl_pyro_barrier2)
instance_create(-200, 0, obj_pl_pyro_barrier2)
if (!instance_exists(obj_pl_evade_soul))
    instance_create(320, 240, obj_pl_evade_soul)
bobupdown = 0
balloonx = 0
balloony = 0
backorforth = 0
blackness = 0
helpthere = 0
saved = 0
actnow = 0
balloonicolor = 4235519
pyrocolor = make_color_rgb(20, 14, 0)
countdown = 915
progress = 0
alarm[3] = 1440
rpgchosen = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)
with (instance_create(100, -40, obj_pl_rpg))
    rpgnumber = 0
with (instance_create(100, 40, obj_pl_rpg))
    rpgnumber = 1
with (instance_create(100, 120, obj_pl_rpg))
    rpgnumber = 2
with (instance_create(100, 200, obj_pl_rpg))
    rpgnumber = 3
with (instance_create(100, 280, obj_pl_rpg))
    rpgnumber = 4
with (instance_create(100, 360, obj_pl_rpg))
    rpgnumber = 5
with (instance_create(100, 440, obj_pl_rpg))
    rpgnumber = 6
with (instance_create(540, 40, obj_pl_rpg))
    rpgnumber = 7
with (instance_create(540, 120, obj_pl_rpg))
    rpgnumber = 8
with (instance_create(540, 200, obj_pl_rpg))
    rpgnumber = 9
with (instance_create(540, 280, obj_pl_rpg))
    rpgnumber = 10
with (instance_create(540, 360, obj_pl_rpg))
    rpgnumber = 11
with (instance_create(540, 440, obj_pl_rpg))
    rpgnumber = 12
with (instance_create(540, 520, obj_pl_rpg))
    rpgnumber = 13
alarm[0] = 60

