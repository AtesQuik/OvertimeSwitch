if (saved == 0)
{
    draw_sprite_ext(spr_b_gear, 0, (x + extrax), (y + extray), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    draw_sprite_ext(spr_b_gear, 1, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
}
else
    draw_sprite_ext(spr_b_gearsaved, 0, x, y, image_xscale, image_yscale, image_angle, c_lime, image_alpha)

