if (!instance_exists(obj_m_puzzledone))
{
    if (activated == 0)
        draw_sprite(sprite_index, 0, x, y)
    if (activated == 1)
        draw_sprite(sprite_index, 1, x, y)
}
else
    draw_sprite(sprite_index, 1, x, y)

