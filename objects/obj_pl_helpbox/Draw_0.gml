draw_set_font(fontname)
draw_set_color(c_white)
draw_sprite_ext(spr_textbox_help, 0, x, y, 2, 2, 0, image_blend, 1)
draw_text_ext((x + 20), (y + 10), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 640)
draw_set_color(c_white)
draw_set_font(font_standard)
draw_sprite_ext(spr_whitescreen, 0, 0, 0, 2, 2, 0, image_blend, whitealpha)

