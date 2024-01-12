if (progress == 0)
    draw_sprite(spr_bluekey, image_index, x, y)
if (progress > 1)
    draw_sprite_ext(spr_lethal_transform, transform, 160, 90, 1, 1, 0, image_blend, catalpha)

