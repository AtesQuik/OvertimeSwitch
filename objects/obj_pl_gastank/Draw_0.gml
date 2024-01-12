if (progress == 4)
{
    draw_sprite_stretched(spr_pyro_warnpixel, image_index, x, 0, 1, 480)
    draw_sprite_stretched(spr_pyro_warnpixel, image_index, (x - 20), 0, 1, 480)
    draw_sprite_stretched(spr_pyro_warnpixel, image_index, (x + 20), 0, 1, 480)
}
if (tankdir == 0)
{
    draw_sprite_ext(spr_pyro_tank, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    draw_sprite_ext(spr_pyro_tank_top, 2, (x - 37), y, image_xscale, image_yscale, topangle, image_blend, image_alpha)
}
if (tankdir == 1)
{
    draw_sprite_ext(spr_pyro_tank, 1, x, y, (-image_xscale), image_yscale, image_angle, image_blend, image_alpha)
    draw_sprite_ext(spr_pyro_tank_top, 2, (x + 37), y, (-image_xscale), image_yscale, (-topangle), image_blend, image_alpha)
}

