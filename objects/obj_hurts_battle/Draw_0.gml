if ((place_meeting(x, y, obj_enemy_spared) || enemyhurt == 1 || enemyhealth <= 0) && enemydead == 0)
{
    draw_sprite_ext(spr_ithurts_full, 0, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_ithurts_weapon, 0, (x - 26), (y + 7), 1, 1, 0, image_blend, 0.5)
}
else
{
    draw_sprite(spr_ithurts_battle, 2, x, (y - (shaking / 4)))
    draw_sprite(spr_ithurts_battle, 3, x, y)
    draw_sprite(spr_ithurts_battle, 4, x, (y - (shaking / 2)))
    draw_sprite(spr_ithurts_battle, 5, x, (y - (shaking / 2)))
    draw_sprite(spr_ithurts_battle, 1, x, (y - (shaking / 4)))
    draw_sprite(spr_ithurts_battle, 0, x, (y - (shaking / 6)))
    draw_sprite_ext(spr_ithurts_weapon, 0, (x - 26), ((y + 7) - (shaking / 2)), 1, 1, (5 + shaking), image_blend, image_alpha)
}
scr_enemy_draw_healthbar()

