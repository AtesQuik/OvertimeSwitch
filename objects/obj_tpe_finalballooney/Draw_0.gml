if (lift == 0)
    draw_sprite_ext(spr_ballooney_ow, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
else
{
    draw_sprite(spr_ballooney_leave, 0, x, y)
    if (lift < 37)
        draw_sprite(spr_ballooney_leave_shadow, round((lift / 4)), x, 95)
}

