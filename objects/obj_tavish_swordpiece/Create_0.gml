if (!instance_exists(obj_m_blackbattle))
    instance_create(0, 0, obj_m_blackbattle)
spd = 0
sdirection = 0
damagedone = 0
reverse = 0
image_speed = 0
if (sdirection == 0)
    image_angle = (0 + random_range((-global.drunk), global.drunk))
if (sdirection == 1)
    image_angle = (90 + random_range((-global.drunk), global.drunk))
if (sdirection == 2)
    image_angle = (180 + random_range((-global.drunk), global.drunk))
if (sdirection == 3)
    image_angle = (270 + random_range((-global.drunk), global.drunk))

