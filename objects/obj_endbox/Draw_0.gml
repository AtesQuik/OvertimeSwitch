draw_set_font(fontname)
draw_set_color(c_white)
draw_sprite_ext(spr_textbox_battle, 0, extray, extray, 1, 1, image_angle, image_blend, image_alpha)
if (progress < 2)
    draw_text_ext(26, 135, string_hash_to_newline(string_copy(endstring, 1, POS)), 18, 237)
draw_set_color(c_white)
draw_set_font(font_standard)

