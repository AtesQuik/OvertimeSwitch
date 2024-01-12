if ((!instance_exists(obj_fake_soul_battlestart)) && (!instance_exists(obj_fake_soul_tobattle)))
{
    instance_create((x - random_range(10, 50)), (y - random_range(-30, 30)), obj_m_demo_sword)
    instance_create((x - random_range(10, 50)), (y - random_range(-30, 30)), obj_m_demo_sword)
    instance_create((x - random_range(10, 50)), (y - random_range(-30, 30)), obj_m_demo_sword)
    throwing = 1
    alarm[1] = 15
    alarm[0] = 60
}

