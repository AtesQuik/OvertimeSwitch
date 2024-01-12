var __b__;
__b__ = action_if_variable(global.battlemenuoffline, 0, 0)
if __b__
{
    draw_set_font(fontname)
    draw_set_color(c_white)
    draw_sprite(spr_textbox, 0, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 170), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 237)
    draw_set_color(c_white)
    draw_set_font(font_standard)
}
else
{
    draw_set_font(fontname)
    draw_set_color(c_white)
    draw_sprite(spr_textbox_battle, 0, 0, 0)
    draw_text_ext(26, 135, string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 237)
    draw_set_color(c_white)
    draw_set_font(font_standard)
}

