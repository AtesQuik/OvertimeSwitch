if (beltdirection == 0)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
if (beltdirection == 1)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 90, image_blend, image_alpha)
if (beltdirection == 2)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, -1, 0, image_blend, image_alpha)
if (beltdirection == 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 270, image_blend, image_alpha)

