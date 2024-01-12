draw_set_font(fontname)
draw_set_color(c_white)
if (global.textboxtop == 0)
{
    draw_sprite(spr_textbox, 0, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
    if (textface != 0)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 88), (__view_get( e__VW.YView, view_current ) + 170), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 237)
    else
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 170), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 237)
}
else if (global.textboxtop == 1)
{
    draw_sprite(spr_textbox, 0, __view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) - 156))
    if (textface != 0)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 88), (__view_get( e__VW.YView, view_current ) + 14), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 237)
    else
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 14), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 237)
}
draw_set_color(c_white)
draw_set_font(font_standard)

