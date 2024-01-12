if (stop == 0)
{
    alarm[1] = 8
    with (instance_create(360, 230, obj_pyro_fireball2))
        move_towards_point((640 - obj_pl_flamewaves2.x), obj_pl_flamewaves2.y, 6)
}

