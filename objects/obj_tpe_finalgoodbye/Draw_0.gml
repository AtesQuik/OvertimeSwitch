draw_sprite(spr_pyro_stand, image_index, x, y)
if (onback == 0)
    draw_sprite_ext(spr_pro_stand, 1, 100, 100, 1, 1, 0, image_blend, image_alpha)
else
    draw_sprite_ext(spr_pro_stand, 1, 100, 115, 1, 1, 90, image_blend, image_alpha)
draw_sprite_ext(spr_whitescreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, whitescreen)
draw_sprite_ext(spr_blackscreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, blackscreen)

