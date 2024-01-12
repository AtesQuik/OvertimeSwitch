if (stop == 0)
{
    alarm[0] = 8
    with (instance_create(260, 230, obj_pyro_fireball2))
        move_towards_point(obj_pl_flamewaves2.x, obj_pl_flamewaves2.y, 6)
}

