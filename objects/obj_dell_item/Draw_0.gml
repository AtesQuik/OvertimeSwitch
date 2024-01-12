if (progress == 0)
{
    if (activated == 0)
        draw_sprite_ext(spr_bottom_row_text, 4, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
    if (activated == 1)
    {
        draw_sprite_ext(spr_bottom_row_text, 2, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_soul, 0, 180, 226, 0.5, 0.5, 0, image_blend, image_alpha)
    }
}
if (progress > 0)
    draw_sprite_ext(sprite_index, 4, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
if (progress == 1 && global.gotsapper == 1 && global.removedsapper == 0)
{
    draw_set_font(font_menu)
    draw_sprite_ext(spr_soul, 0, 130, 160, 0.5, 0.5, 0, image_blend, image_alpha)
    draw_text(140, 152, string_hash_to_newline("* Sapper"))
    draw_set_font(font_standard)
}

