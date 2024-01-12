if (deathprogress < 6)
{
    draw_sprite_ext(spr_blackscreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, 1)
    if (deathprogress <= 1)
        draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, 0, image_blend, image_alpha)
    if (deathprogress == 2 && repaired == 0)
        draw_sprite_ext(spr_soul_broken, image_index, x, y, 0.5, 0.5, 0, image_blend, image_alpha)
    if (repaired == 1 || deathprogress > 2)
        draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, 0, image_blend, image_alpha)
    if (deathprogress == 3)
    {
        draw_set_color(c_white)
        draw_set_font(font_standard)
        draw_text_ext(83, 82, string_hash_to_newline(string_copy("* But it came back.", 1, POS)), 18, 237)
        draw_set_color(c_white)
        draw_set_font(font_standard)
    }
}
draw_sprite_ext(spr_whitescreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, whitescreen)

