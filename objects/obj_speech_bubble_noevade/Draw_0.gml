draw_set_font(fontname)
draw_set_color(c_black)
draw_sprite_ext(spr_speech_bubble, bubbleshape, x, 0, 0.5, 0.5, 0, image_blend, image_alpha)
if (bubbleshape == 0)
    draw_text_ext((x + 37), 23, string_hash_to_newline(string_copy(CSTR, 1, POS)), 12, 48)
if (bubbleshape == 1)
    draw_text_ext((x - 39), 17, string_hash_to_newline(string_copy(CSTR, 1, POS)), 12, 78)
if (bubbleshape == 2)
    draw_text_ext((x + 42), 42, string_hash_to_newline(string_copy(CSTR, 1, POS)), 12, 96)
if (bubbleshape == 3)
    draw_text_ext((x + 42), 42, string_hash_to_newline(string_copy(CSTR, 1, POS)), 12, 96)
if (bubbleshape == 4)
    draw_text_ext((x + 42), 42, string_hash_to_newline(string_copy(CSTR, 1, POS)), 12, 96)
draw_set_color(c_white)
draw_set_font(font_standard)

