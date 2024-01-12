if (deactivated == 0)
{
    draw_sprite(sprite_index, 0, x, y)
    if (turrettype == 0)
        draw_line_width_colour((x - 1), (y - 16), x, (y + 240), 2, c_orange, c_orange)
    if (turrettype == 1)
        draw_line_width_colour((x - 1), (y - 16), x, (y + 240), 2, c_aqua, c_aqua)
}
else
    draw_sprite(sprite_index, 1, x, y)

