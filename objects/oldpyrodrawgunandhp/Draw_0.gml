if (akimbo == 1)
{
    draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
    draw_sprite_ext(spr_gun, 0, 310, 300, -2, 2, 0, image_blend, 1)
}
if (akimbo == 2)
{
    draw_sprite_ext(spr_gun, 1, 314, 304, 2, 2, 0, image_blend, 1)
    draw_sprite_ext(spr_gun, 0, 310, 300, -2, 2, 0, image_blend, 1)
}
if (akimbo == 3)
{
    draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
    draw_sprite_ext(spr_gun, 0, 310, 300, -2, 2, 0, image_blend, 1)
}
if (akimbo == 4)
{
    draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
    draw_sprite_ext(spr_gun, 1, 306, 304, -2, 2, 0, image_blend, 1)
}
if (shooting == 1)
    draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
if (shooting == 2)
    draw_sprite_ext(spr_gun, 1, 314, 304, 2, 2, 0, image_blend, 1)
if (shooting == 3)
    draw_sprite_ext(spr_gun, 0, 310, 300, 2, 2, 0, image_blend, 1)
if (ishurt == 1)
{
    draw_sprite(spr_damage_bar_pyro, 1, 93, 430)
    draw_sprite_stretched(spr_damage_bar_pyro, 2, 93, 430, round(((454 / global.pyromaxhp) * global.pyrohp)), 22)
    draw_sprite(spr_damage_bar_pyro, 0, 93, 430)
}

