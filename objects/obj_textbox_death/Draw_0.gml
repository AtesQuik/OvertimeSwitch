draw_set_font(fontname)
draw_set_color(c_lime)
draw_text_ext(100, 160, string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 146)
draw_set_color(c_white)
draw_set_font(font_standard)
draw_sprite_ext(spr_blacklines, 0, 0, 0, 1, 1, 0, c_black, 0.3)

