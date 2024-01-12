if ((!instance_exists(obj_misha_punchmode)) && (!instance_exists(obj_misha_punch)) && (!instance_exists(obj_misha_punch2)))
{
    draw_sprite_ext(spr_misha_battle, 2, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_misha_battle, 0, x, (y - (shaking / 4)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_misha_battle, 1, x, (y - (shaking / 8)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_misha_battle_head, heads, x, ((y - 10) - (shaking / 8)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_misha_battle, 3, x, (y - (shaking / 2)), 1, 1, 0, image_blend, image_alpha)
}
draw_sprite_ext(spr_blackscreen, 0, 0, 0, 1, 1, 0, image_blend, blackalpha)
scr_enemy_draw_healthbar()

