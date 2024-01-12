if (soulbit == 0 || soulbit == 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, image_angle, image_blend, image_alpha)
if (soulbit == 1 || soulbit == 2)
    draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, (-image_angle), image_blend, image_alpha)

