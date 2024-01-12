if (!instance_exists(obj_tm_hereitcomes))
    instance_create(0, 0, obj_fake_battle_fade_out)
else
{
    with (obj_tm_hereitcomes)
        progress = 3
}

