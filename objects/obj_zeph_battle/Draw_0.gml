if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0)
    draw_sprite(healthysprite, image_index, x, y)
if (place_meeting(x, y, obj_enemy_spared) || enemyhealth <= 0)
    draw_sprite(downsprite, image_index, x, y)
if (enemyhurt == 1)
    draw_sprite(hurtsprite, image_index, x, y)
scr_enemy_draw_healthbar()

