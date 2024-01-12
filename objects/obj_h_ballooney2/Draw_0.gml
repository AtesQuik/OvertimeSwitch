if (elevation == 0)
    draw_sprite(spr_ballooney_ow, image_index, x, y)
else
{
    draw_sprite(spr_ballooney_leave, image_index, x, (y - elevation))
    if (elevation < 37)
        draw_sprite(spr_ballooney_leave_shadow, round((elevation / 4)), x, y)
}

