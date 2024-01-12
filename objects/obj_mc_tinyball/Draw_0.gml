if (yellow < 2)
    draw_sprite(spr_soul_ball, image_index, x, y)
if (yellow == 0)
    draw_sprite_ext(spr_soul, 0, x, yellowy, 0.5, 0.5, 0, image_blend, image_alpha)
if (yellow == 1)
    draw_sprite_ext(spr_soul_white, 0, x, yellowy, 0.5, 0.5, 0, c_yellow, image_alpha)
if (yellow == 2)
{
    draw_sprite_ext(spr_soul_white, 0, x, yellowy, 0.5, 0.5, 0, c_yellow, image_alpha)
    draw_sprite(spr_soul_ball, image_index, x, 175)
}

