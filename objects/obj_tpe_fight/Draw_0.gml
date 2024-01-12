if (progress < 4)
{
    draw_sprite_ext(spr_fight_button, activated, x, y, 0.5, 0.5, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_soul, 0, 160, 160, 0.5, 0.5, 0, c_white, 1)
}
if (progress > 3)
{
    if (shooting == 1)
        draw_sprite(spr_gun, 0, 120, 125)
    if (shooting == 2)
        draw_sprite(spr_gun, 1, 122, 127)
}
draw_sprite_ext(spr_whitescreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, whitescreen)
draw_sprite_ext(spr_blackscreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, blackscreen)

