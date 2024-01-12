var __b__;
__b__ = action_if_variable(saveprogress, 0, 0)
if __b__
{
    draw_set_font(fontname)
    draw_set_color(c_white)
    if (global.textboxtop == 0)
    {
        draw_sprite(spr_textbox, 0, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
        if (global.genocide == 1)
        {
            draw_set_color(make_color_rgb(104, 51, 85))
            if (global.enemiesleft > 0)
                draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 170), string_hash_to_newline((("* " + string(global.enemiesleft)) + " left.")), 18, 237)
            if (global.enemiesleft == 0)
                draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 170), string_hash_to_newline("* Termination."), 18, 237)
            draw_set_color(c_white)
        }
        else if (global.genocide == 0)
        {
            draw_set_color(c_white)
            draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 170), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 237)
            draw_set_color(c_white)
        }
    }
    else if (global.textboxtop == 1)
    {
        draw_sprite(spr_textbox, 0, __view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) - 156))
        if (global.genocide == 1)
        {
            draw_set_color(make_color_rgb(104, 51, 85))
            if (global.enemiesleft > 0)
                draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 14), string_hash_to_newline((("* " + string(global.enemiesleft)) + " left.")), 18, 237)
            if (global.enemiesleft == 0)
                draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 14), string_hash_to_newline("* Termination."), 18, 237)
            draw_set_color(c_white)
        }
        else if (global.genocide == 0)
        {
            draw_set_color(c_white)
            draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 14), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 237)
            draw_set_color(c_white)
        }
    }
    draw_set_color(c_white)
    draw_set_font(font_standard)
}
else
{
    draw_set_font(font_menu)
    if (saveprogress == 1)
        draw_set_color(c_white)
    else if (saveprogress == 2)
        draw_set_color(c_yellow)
    draw_sprite(spr_save_box, 0, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
    if (saveprogress == 1)
    {
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 70), (__view_get( e__VW.YView, view_current ) + 70), string_hash_to_newline(string(global.savedplayer)), 18, 176)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 140), (__view_get( e__VW.YView, view_current ) + 70), string_hash_to_newline(("LV " + string(global.savedlevel))), 18, 176)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 210), (__view_get( e__VW.YView, view_current ) + 70), string_hash_to_newline(((string(global.savedminute) + ":") + string(floor((global.savedsecond / 30))))), 18, 176)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 70), (__view_get( e__VW.YView, view_current ) + 90), string_hash_to_newline(string(global.savedroom)), 18, 176)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 85), (__view_get( e__VW.YView, view_current ) + 120), string_hash_to_newline("Save"), 18, 176)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 175), (__view_get( e__VW.YView, view_current ) + 120), string_hash_to_newline("Return"), 18, 176)
        if (xposition == 0)
            draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 75), (__view_get( e__VW.YView, (0 << 0) ) + 128))
        if (xposition == 1)
            draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 166), (__view_get( e__VW.YView, (0 << 0) ) + 128))
    }
    if (saveprogress == 2)
    {
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 70), (__view_get( e__VW.YView, view_current ) + 70), string_hash_to_newline(string(global.savedplayer)), 18, 176)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 140), (__view_get( e__VW.YView, view_current ) + 70), string_hash_to_newline(("LV " + string(global.savedlevel))), 18, 176)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 210), (__view_get( e__VW.YView, view_current ) + 70), string_hash_to_newline(((string(global.savedminute) + ":") + string(floor((global.savedsecond / 30))))), 18, 176)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 70), (__view_get( e__VW.YView, view_current ) + 90), string_hash_to_newline(string(global.savedroom)), 18, 176)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 85), (__view_get( e__VW.YView, view_current ) + 120), string_hash_to_newline("File saved"), 18, 176)
    }
    draw_set_color(c_white)
    draw_set_font(font_standard)
}

