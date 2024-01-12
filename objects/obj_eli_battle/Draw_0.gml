if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0 && enemydead == 0)
{
    draw_sprite_ext(healthysprite, 1, x, y, -1, 1, 0, image_blend, 1)
    draw_sprite_ext(spr_eli_battle_heads, 2, x, y, -1, 1, 0, image_blend, 1)
}
if ((place_meeting(x, y, obj_enemy_spared) || enemyhealth <= 0) && enemydead == 0)
    draw_sprite_ext(downsprite, image_index, x, y, -1, 1, 0, image_blend, 1)
if (enemyhurt == 1 && enemydead == 0)
    draw_sprite_ext(hurtsprite, image_index, x, y, -1, 1, 0, image_blend, 1)
if (enemydead == 1)
    draw_sprite_ext(downsprite, image_index, x, y, -1, 1, 0, image_blend, image_alpha)
scr_enemy_draw_healthbar()

