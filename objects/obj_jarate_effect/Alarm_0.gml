if (instance_exists(obj_spy_battle) && (!instance_exists(obj_enemy_down)) && (!instance_exists(obj_enemy_spared)))
{
    instance_create((obj_spy_battle.x + irandom_range(-20, 20)), (obj_spy_battle.y + irandom_range(-30, 20)), obj_jarate_drop)
    alarm[0] = irandom_range(5, 15)
}
else
    instance_destroy()

