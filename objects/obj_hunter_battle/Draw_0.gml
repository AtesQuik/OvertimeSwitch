if ((place_meeting(x, y, obj_enemy_spared) || enemyhurt == 1 || enemyhealth <= 0) && enemydead == 0)
    draw_sprite_ext(spr_hunter_full, 0, x, y, 1, 1, 0, image_blend, 0.5)
else
{
    draw_sprite(spr_hunter_arms1, 1, x, (y + army))
    draw_sprite(spr_hunter_arms1, 3, x, y)
    draw_sprite_ext(spr_hunter_arms2, 0, ((x - 51) - arm2x), (y + 46), (-1 - (arm2x / 30)), 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_hunter_arms2, 1, ((x - 96) - arm2x), (y + 46), -1, 1, 0, image_blend, image_alpha)
    draw_sprite(spr_hunter_arms1, 0, x, (y + army))
    draw_sprite(spr_hunter_arms1, 2, x, y)
    draw_sprite_ext(spr_hunter_arms2, 0, ((x + 54) + arm1x), (y + 46), (1 + (arm1x / 30)), 1, 0, image_blend, image_alpha)
    draw_sprite(spr_hunter_arms2, 1, ((x + 99) + arm1x), (y + 46))
    draw_sprite(spr_hunter_battle, image_index, x, y)
}
scr_enemy_draw_healthbar()

