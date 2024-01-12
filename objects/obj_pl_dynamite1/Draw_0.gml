if (progress == 0)
    draw_sprite_ext(sprite_index, 0, (x + extrax), (y + extray), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
else
    draw_sprite_ext(sprite_index, image_index, (x + extrax), (y + extray), image_xscale, image_yscale, image_angle, image_blend, image_alpha)

