if (progress < 4)
    draw_sprite_ext(sprite_index, 0, x, y, 0.5, 0.5, 0, image_blend, soulalpha)
if (shooting == 1)
    draw_sprite(spr_gun, 0, 160, 135)
if (shooting == 2)
    draw_sprite(spr_gun, 1, 162, 137)
if (shooting == 3)
    draw_sprite_ext(spr_gun, 0, 160, 135, 1, 1, 0, image_blend, gunalpha)

