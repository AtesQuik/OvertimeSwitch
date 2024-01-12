if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0 && enemydead == 0)
{
    draw_sprite(spr_sniper_battle_arms, image_index, x, (y + armsy))
    draw_sprite(healthysprite, image_index, x, y)
}
if (enemyhealth <= 0 && enemyhurt == 0 && enemydead == 0)
    draw_sprite(spr_sniper_battle_full, image_index, x, y)
if place_meeting(x, y, obj_enemy_spared)
    draw_sprite(downsprite, 1, x, y)
if (enemyhurt == 1)
    draw_sprite(downsprite, 0, x, y)
if (enemydead == 1)
    draw_sprite_ext(spr_sniper_battle_full, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
scr_enemy_draw_healthbar()

