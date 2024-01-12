if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0)
    draw_sprite(healthysprite, image_index, x, y)
if (place_meeting(x, y, obj_enemy_spared) || enemyhealth <= 0)
    draw_sprite(downsprite, image_index, x, y)
if (global.showhealthbars == 1 && enemyhealth > 0 && sparemeter > 0)
{
    if place_meeting(x, y, obj_enemy1_checkup)
    {
        draw_sprite(spr_enemy_hp_red, 0, 167, 140)
        draw_sprite_stretched(spr_healthbar_enemy, 0, 167, 140, round(((48 / maxhealth) * enemyhealth)), 8)
    }
    if place_meeting(x, y, obj_enemy2_checkup)
    {
        draw_sprite(spr_enemy_hp_red, 0, 167, 156)
        draw_sprite_stretched(spr_healthbar_enemy, 0, 167, 156, round(((48 / maxhealth) * enemyhealth)), 8)
    }
    if place_meeting(x, y, obj_enemy3_checkup)
    {
        draw_sprite(spr_enemy_hp_red, 0, 167, 172)
        draw_sprite_stretched(spr_healthbar_enemy, 0, 167, 172, round(((48 / maxhealth) * enemyhealth)), 8)
    }
}

