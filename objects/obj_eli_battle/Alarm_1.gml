if (instance_exists(obj_misha_battle) && global.elidown == 0)
{
    alarm[1] = irandom_range(30, 45)
    with (instance_create((x + 47), (y + 12), obj_eli_battle_heals))
        move_towards_point(obj_misha_battle.x, (obj_misha_battle.y + irandom_range(-10, 10)), 2)
}

