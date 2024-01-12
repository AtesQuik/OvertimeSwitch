if instance_exists(obj_pl_pyro_battle)
{
    if (obj_pl_pyro_battle.akimbo == 1)
    {
        draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
        draw_sprite_ext(spr_gun, 0, 310, 300, -2, 2, 0, image_blend, 1)
    }
    if (obj_pl_pyro_battle.akimbo == 2)
    {
        draw_sprite_ext(spr_gun, 1, 314, 304, 2, 2, 0, image_blend, 1)
        draw_sprite_ext(spr_gun, 0, 310, 300, -2, 2, 0, image_blend, 1)
    }
    if (obj_pl_pyro_battle.akimbo == 3)
    {
        draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
        draw_sprite_ext(spr_gun, 0, 310, 300, -2, 2, 0, image_blend, 1)
    }
    if (obj_pl_pyro_battle.akimbo == 4)
    {
        draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
        draw_sprite_ext(spr_gun, 1, 306, 304, -2, 2, 0, image_blend, 1)
    }
}
if instance_exists(obj_pl_pyro_battle)
{
    if (obj_pl_pyro_battle.shooting == 1)
        draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
    if (obj_pl_pyro_battle.shooting == 2)
        draw_sprite_ext(spr_gun, 1, 314, 304, 2, 2, 0, image_blend, 1)
    if (obj_pl_pyro_battle.shooting == 3)
        draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
    if (obj_pl_pyro_battle.ishurt == 1)
    {
        draw_sprite(spr_damage_bar_pyro, 1, 93, 430)
        draw_sprite_stretched(spr_damage_bar_pyro, 2, 93, 430, round(((454 / global.pyromaxhp) * global.pyrohp)), 22)
        draw_sprite(spr_damage_bar_pyro, 0, 93, 430)
    }
}

