if (warning == 1)
    draw_sprite_stretched(spr_pyro_warnpixel, image_index, x, 0, 1, 480)
if (progress < 2)
{
    draw_sprite_ext(spr_pyro_fire2, image_index, x, (y + 34), 0.2, 0.2, 180, image_blend, image_alpha)
    draw_sprite_ext(spr_pyro_rocket, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
}
else
{
    draw_sprite_ext(spr_pyro_fire2, image_index, x, (y - 34), 0.2, -0.2, 180, image_blend, image_alpha)
    draw_sprite_ext(spr_pyro_rocket, image_index, x, y, image_xscale, (-image_yscale), 0, image_blend, image_alpha)
}

