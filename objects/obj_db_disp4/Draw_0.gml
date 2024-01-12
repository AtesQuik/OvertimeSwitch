draw_sprite(sprite_index, image_index, x, y)
if (progress < 1)
{
    if (itemtype == 0)
        draw_sprite(spr_dispenser_arms2, image_index, x, y)
    if (itemtype == 1)
        draw_sprite(spr_dispenser_arms2, image_index, x, y)
    if (itemtype == 2)
        draw_sprite(spr_dispenser_arms1, 0, x, y)
    if (itemtype == 3)
        draw_sprite(spr_dispenser_arms1, 1, x, y)
    draw_sprite(spr_textbox_cooking, 0, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
    draw_set_font(font_standard)
    if (global.ingredients < 20)
        draw_set_color(c_red)
    if (global.ingredients >= 20 && global.ingredients < 40)
        draw_set_color(c_yellow)
    if (global.ingredients >= 40 && global.ingredients < 60)
        draw_set_color(c_green)
    draw_text((__view_get( e__VW.XView, (0 << 0) ) + 30), (__view_get( e__VW.YView, (0 << 0) ) + 206), string_hash_to_newline(("Ingredients caught: " + string(global.ingredients))))
    draw_set_color(c_white)
    draw_text((__view_get( e__VW.XView, (0 << 0) ) + 30), (__view_get( e__VW.YView, (0 << 0) ) + 206), string_hash_to_newline("Ingredients caught:"))
    draw_set_color(c_white)
}

