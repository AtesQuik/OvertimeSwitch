if ((place_meeting(x, y, obj_enemy_spared) || enemyhurt == 1 || enemyhealth <= 0) && enemydead == 0)
    draw_sprite_ext(spr_lethal_full, 0, x, y, 1, 1, 0, image_blend, 0.5)
else
{
    draw_sprite_ext(spr_lethal_tail, 0, (x - 14), (y + 8), 1, 1, (-9 + tailangle), image_blend, image_alpha)
    draw_sprite_ext(spr_lethal_battle, 5, x, (y - leg1y), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_lethal_battle, 6, x, ((y - 5) + leg1y), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_lethal_battle, 2, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_lethal_battle, 3, x, (y - leg1y), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_lethal_battle, 4, x, ((y - 5) + leg1y), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_lethal_eye, eyeprogress, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_lethal_battle, 1, (x + headshakex), (y + headshakey), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_lethal_battle, 0, x, (y - extrahead), 1, 1, 0, image_blend, image_alpha)
}
scr_enemy_draw_healthbar()

