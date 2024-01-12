var __b__;
__b__ = action_if_variable(global.playerhealth, 0, 2)
if __b__
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0 && enemydead == 0 && attacking == 1)
        draw_sprite(healthysprite, 1, x, y)
    if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0 && enemydead == 0 && attacking == 0)
        draw_sprite(healthysprite, image_index, x, y)
    if place_meeting(x, y, obj_enemy_spared)
        draw_sprite(spr_sani_battle_down, 1, x, y)
    if (enemyhurt == 1 && enemydead == 0 && (!(place_meeting(x, y, obj_enemy_spareable))) && enemyhealth > 0)
        draw_sprite(spr_sani_battle_down, 0, x, y)
    if (enemyhurt == 1 && enemydead == 0 && (!(place_meeting(x, y, obj_enemy_spareable))) && enemyhealth <= 0)
        draw_sprite(spr_sani_battle_down, 2, x, y)
    if (enemyhurt == 1 && enemydead == 0 && place_meeting(x, y, obj_enemy_spareable))
        draw_sprite(spr_sani_battle_down, 2, x, y)
    if (enemydead == 1)
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
    if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth <= 0 && enemyhurt == 0 && enemydead == 0)
        draw_sprite(spr_sani_battle, image_index, x, y)
}
else
    draw_sprite(spr_sani_battle, 14, x, y)
scr_enemy_draw_healthbar()

