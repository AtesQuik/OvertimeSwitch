if (blockdir == 0)
    image_angle = 0
if (blockdir == 1)
    image_angle = 90
if (blockdir == 2)
    image_angle = 180
if (blockdir == 3)
    image_angle = 270
if ((!instance_exists(obj_evade_soul)) && (!instance_exists(obj_tpe_evade_soul)))
    instance_destroy()

