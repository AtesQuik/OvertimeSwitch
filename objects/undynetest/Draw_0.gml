draw_text(20, 20, string_hash_to_newline(gunangle))
draw_sprite(spr_merc_battle, 4, x, (y - (shaking / 3)))
draw_sprite(spr_merc_battle, 5, x, y)
draw_sprite(spr_merc_battle, 6, x, (y - (shaking / 2)))
draw_sprite(spr_merc_battle, 7, x, (y - (shaking / 2)))
draw_sprite(spr_merc_battle, 1, x, (y - (shaking / 3)))
draw_sprite_ext(spr_merc_battle, 8, x, ((y - 10) - (shaking / 2)), 1, 1, 10, image_blend, image_alpha)
draw_sprite(spr_merc_battle, 0, x, (y - (shaking / 6)))

