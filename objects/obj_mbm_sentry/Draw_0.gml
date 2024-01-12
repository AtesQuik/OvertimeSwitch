if (x > 160)
    draw_sprite_ext(spr_sentry_blue, 0, x, y, 1, 1, 0, image_blend, image_alpha)
else
    draw_sprite_ext(spr_sentry_blue, 0, x, y, -1, 1, 0, image_blend, image_alpha)

