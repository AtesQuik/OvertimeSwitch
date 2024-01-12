if (fadeinprogress < 18)
    draw_sprite(spr_intro, image_index, 0, 0)
else
{
    draw_sprite(spr_intro_big, 0, 0, (0 - pany))
    draw_sprite(spr_intro_bars, image_index, 0, 0)
}
draw_sprite_ext(spr_blackscreen, 0, 0, 0, 1, 1, 0, c_black, blackness)
if (nomore == 0)
{
    draw_set_font(fontname)
    draw_set_color(c_lime)
    draw_text_ext(60, 160, string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 320)
    draw_set_color(c_white)
    draw_set_font(font_standard)
}
draw_sprite_ext(spr_blacklines, 0, 0, 0, 1, 1, 0, c_black, 0.3)
draw_text(0, 0, string_hash_to_newline(("Fadeout " + string(fadeoutprogress))))
draw_text(100, 0, string_hash_to_newline(("Alarm0 " + string(alarm[0]))))
draw_text(0, 18, string_hash_to_newline(("Fadein " + string(fadeinprogress))))
draw_text(100, 18, string_hash_to_newline(("Alarm1 " + string(alarm[1]))))
draw_text(0, 36, string_hash_to_newline(("Text " + string(textprogress))))
draw_text(100, 36, string_hash_to_newline(("Alarm2 " + string(alarm[2]))))

