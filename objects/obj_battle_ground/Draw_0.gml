if (global.gunfired == 0)
    draw_sprite(spr_gun, 0, obj_battle_enemy_select.x, (obj_battle_enemy_select.y + 64))
else if (global.gunfired == 1)
    draw_sprite(spr_gun, 1, (obj_battle_enemy_select.x + 2), (obj_battle_enemy_select.y + 66))
draw_sprite(spr_textbox_battle, 0, 0, 0)
draw_sprite_ext(spr_target, 0, 23, 131, 0.5, 0.5, 0, image_blend, image_alpha)

