draw_sprite_ext(spr_redbar, 0, 308, 20, 2, 2, 0, image_blend, 1)
draw_sprite_stretched(spr_healthbar, 0, 308, 20, 24, (24 - round(((24 / global.fullhealth) * global.playerhealth))))
draw_sprite_ext(spr_health_plus, 0, 308, 20, 2, 2, 0, image_blend, 1)
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, image_alpha)

