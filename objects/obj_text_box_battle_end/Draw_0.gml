draw_set_font(fontname)
draw_set_color(c_white)
draw_sprite(spr_textbox_battle, 0, 0, 0)
draw_text_ext(26, 135, string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 237)
draw_set_color(c_white)
draw_set_font(font_standard)

