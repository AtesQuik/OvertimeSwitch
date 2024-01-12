if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0 && enemydead == 0)
    draw_sprite(healthysprite, image_index, x, y)
if ((place_meeting(x, y, obj_enemy_spared) || enemyhealth <= 0) && enemydead == 0)
    draw_sprite(downsprite, image_index, x, y)
if (enemyhurt == 1 && enemydead == 0)
{
    draw_sprite(hurtsprite, image_index, x, y)
    draw_sprite(spr_damage_bar, 1, (x - 24), ((y - (other.sprite_height / 2)) - 13))
    draw_sprite_stretched(spr_damage_bar, 2, (x - 24), ((y - (other.sprite_height / 2)) - 13), round(((49 / maxhealth) * enemyhealth)), 9)
    draw_sprite(spr_damage_bar, 0, (x - 24), ((y - (other.sprite_height / 2)) - 13))
}
if (enemydead == 1)
    draw_sprite(spr_empty, 0, x, y)
if (global.showhealthbars == 1 && enemyhealth > 0 && (!(place_meeting(x, y, obj_enemy_spared))))
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

