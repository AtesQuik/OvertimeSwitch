draw_set_color(c_white)
if (progress == 0)
{
    draw_sprite(spr_textbox_shop, 1, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
    draw_set_font(font_standard)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 20), (__view_get( e__VW.YView, view_current ) + 130), string_hash_to_newline(string_copy(STR[0], 1, POS)), 18, 237)
    draw_set_font(fontname)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 240), (__view_get( e__VW.YView, view_current ) + 130), string_hash_to_newline("Buy#Sell#Talk#Exit"), 20, 237)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 230), (__view_get( e__VW.YView, view_current ) + 211), string_hash_to_newline((string(global.australium) + " A")), 18, 237)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 280), (__view_get( e__VW.YView, view_current ) + 211), string_hash_to_newline((string(global.itemamount) + "/8")), 18, 237)
}
if (progress == 1 || progress == 2 || progress == 3)
{
    draw_set_font(fontname)
    draw_sprite(spr_textbox_shop, 2, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 230), (__view_get( e__VW.YView, view_current ) + 211), string_hash_to_newline((string(global.australium) + " A")), 18, 237)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 280), (__view_get( e__VW.YView, view_current ) + 211), string_hash_to_newline((string(global.itemamount) + "/8")), 18, 237)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 130), string_hash_to_newline(((string(price1) + " - ") + string(item1))), 18, 237)
    if (selected == 0)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 224), (__view_get( e__VW.YView, view_current ) + 53), string_hash_to_newline(string(text1)), 16, 237)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 150), string_hash_to_newline(((string(price2) + " - ") + string(item2))), 18, 237)
    if (selected == 1)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 224), (__view_get( e__VW.YView, view_current ) + 53), string_hash_to_newline(string(text2)), 16, 237)
    if (item3 != 0)
    {
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 170), string_hash_to_newline(((string(price3) + " - ") + string(item3))), 18, 237)
        if (selected == 2)
            draw_text_ext((__view_get( e__VW.XView, view_current ) + 224), (__view_get( e__VW.YView, view_current ) + 53), string_hash_to_newline(string(text3)), 16, 237)
    }
    else
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 170), string_hash_to_newline("Exit"), 18, 237)
    if (item4 != 0)
    {
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 190), string_hash_to_newline(((string(price4) + " - ") + string(item4))), 18, 237)
        if (selected == 3)
            draw_text_ext((__view_get( e__VW.XView, view_current ) + 224), (__view_get( e__VW.YView, view_current ) + 53), string_hash_to_newline(string(text4)), 16, 237)
    }
    else if (item3 != 0)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 190), string_hash_to_newline("Exit"), 18, 237)
    if (item3 != 0 && item4 != 0)
        draw_text_ext((__view_get( e__VW.XView, view_current ) + 30), (__view_get( e__VW.YView, view_current ) + 210), string_hash_to_newline("Exit"), 18, 237)
    draw_set_font(font_standard)
}
if (progress == 1)
{
    draw_set_font(fontname)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 228), (__view_get( e__VW.YView, view_current ) + 130), string_hash_to_newline(string(buytext)), 18, 237)
    draw_set_font(font_standard)
}
if (progress == 2)
{
    draw_set_font(fontname)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 228), (__view_get( e__VW.YView, view_current ) + 130), string_hash_to_newline(string(buytalk2)), 18, 237)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 240), (__view_get( e__VW.YView, view_current ) + 170), string_hash_to_newline("Yes#No"), 18, 237)
    draw_set_font(font_standard)
}
if (progress == 3)
{
    draw_set_font(fontname)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 229), (__view_get( e__VW.YView, view_current ) + 130), string_hash_to_newline(string(buytalk3)), 18, 237)
    draw_set_font(font_standard)
}
if (progress == 4)
{
    draw_sprite(spr_textbox_shop, 0, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
    draw_set_font(font_standard)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 20), (__view_get( e__VW.YView, view_current ) + 130), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 320)
    draw_set_font(fontname)
}
if (progress == 5)
{
    draw_sprite(spr_textbox_shop, 0, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
    draw_set_font(font_standard)
    draw_text_ext((__view_get( e__VW.XView, view_current ) + 20), (__view_get( e__VW.YView, view_current ) + 130), string_hash_to_newline(string_copy(CSTR, 1, POS)), 18, 320)
    draw_set_font(fontname)
}
draw_set_color(c_white)
draw_set_font(font_standard)
if (progress == 0)
    draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 229), ((__view_get( e__VW.YView, (0 << 0) ) + 138) + (20 * selected)))
if (progress == 1)
    draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 19), ((__view_get( e__VW.YView, (0 << 0) ) + 138) + (20 * selected)))
if (progress == 2)
    draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 229), ((__view_get( e__VW.YView, (0 << 0) ) + 178) + (18 * yesorno)))
if (global.playername == "Batter")
    draw_sprite_ext(spr_zachston, image_index, 0, 0, 1, 1, 0, image_blend, image_alpha)
else
{
    draw_sprite(spr_saxton_hale, saxtonface, 0, 0)
    draw_sprite_ext(spr_saxton_mouth, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
}

