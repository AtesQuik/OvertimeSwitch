draw_sprite_ext(spr_b_bow, image_index, (x + extrax), (y + extray), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if (progress == 1)
{
    if (actnow == 1)
    {
        draw_sprite_ext(spr_b_arrow, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
        draw_sprite_ext(spr_act_button, 0, x, y, 1, 1, image_angle, image_blend, image_alpha)
    }
    else
    {
        if (saved == 0)
            draw_sprite_ext(spr_b_arrow, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
        if (saved == 1)
            draw_sprite_ext(spr_b_arrow, 1, x, y, image_xscale, image_yscale, image_angle, c_lime, image_alpha)
    }
}

