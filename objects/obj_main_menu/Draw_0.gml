draw_set_font(font_menu)
draw_set_color(c_white)
draw_text_ext(70, 59, string_hash_to_newline(string(global.savedplayer)), 18, 176)
draw_text_ext(140, 59, string_hash_to_newline(("LV " + string(global.savedlevel))), 18, 176)
draw_text_ext(210, 59, string_hash_to_newline(((string(global.savedminute) + ":") + string(floor((global.savedsecond / 30))))), 18, 176)
draw_text_ext(70, 79, string_hash_to_newline(string(global.savedroom)), 18, 176)
if (progress == 0)
{
    if (xposition == 0)
    {
        draw_set_color(c_yellow)
        draw_text_ext(85, 109, string_hash_to_newline("Continue"), 18, 176)
        draw_set_color(c_white)
        draw_text_ext(175, 109, string_hash_to_newline("Reset"), 18, 176)
        draw_set_color(c_white)
    }
    if (xposition == 1)
    {
        draw_set_color(c_white)
        draw_text_ext(85, 109, string_hash_to_newline("Continue"), 18, 176)
        draw_set_color(c_yellow)
        draw_text_ext(175, 109, string_hash_to_newline("Reset"), 18, 176)
        draw_set_color(c_white)
    }
}
if (progress > 0 && progress < 2)
{
    draw_sprite_ext(spr_blackscreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, c_black, 1)
    draw_set_color(c_white)
    draw_text_ext(89, 178, string_hash_to_newline("Reset your progress?#"), 18, 320)
    draw_set_color(c_purple)
    draw_set_color(c_white)
    if (xposition == 0)
    {
        draw_set_color(c_yellow)
        draw_text_ext(70, 199, string_hash_to_newline("No"), 18, 176)
        draw_set_color(c_white)
        draw_text_ext(226, 199, string_hash_to_newline("Yes"), 18, 176)
        draw_set_color(c_white)
    }
    if (xposition == 1)
    {
        draw_set_color(c_white)
        draw_text_ext(70, 199, string_hash_to_newline("No"), 18, 176)
        draw_set_color(c_yellow)
        draw_text_ext(226, 199, string_hash_to_newline("Yes"), 18, 176)
        draw_set_color(c_white)
    }
}
if (progress > 0)
{
    if (progress == 2)
        draw_sprite_ext(spr_blackscreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, c_black, 1)
    draw_set_color(make_color_rgb(104, 51, 85))
    draw_text_transformed(25, 26, string_hash_to_newline(("  " + string(global.playername))), 5, 5, 0)
    draw_set_color(c_white)
}
draw_set_font(font_standard)
draw_set_color(c_white)
if (progress == 0)
{
    if (global.scouthired == 0 && global.sanihired == 0 && global.sniperhired == 0 && global.janehired == 0 && global.tavishhired == 0 && global.spyhired == 0)
        draw_sprite(spr_ballooney_ow, image_index, 160, 180)
    if (global.sanihired == 1)
        draw_sprite(spr_sani_stand, 0, 240, 185)
    if (global.sniperhired == 1)
        draw_sprite(spr_sniper, image_index, 165, 170)
    if (global.janehired == 1)
    {
        draw_sprite(spr_jane_stand, 0, 190, 180)
        draw_sprite(spr_dell_stand, 0, 120, 180)
    }
    if (global.tavishhired == 1)
        draw_sprite(spr_na_tavish_stand, 0, 215, 170)
    if (global.spyhired == 1)
        draw_sprite(spr_spy_stand, 0, 145, 180)
    if (global.scouthired == 1)
    {
        draw_sprite(spr_eli_maniac, 0, 65, 180)
        draw_sprite(spr_scout_stand, 0, 95, 190)
    }
    if (global.completedpacifist == 1)
    {
        draw_sprite(spr_pyro_stand, 0, 20, 180)
        draw_sprite(spr_misha_stand, 0, 285, 190)
    }
}

