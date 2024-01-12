if (progress < 2)
    draw_sprite_ext(spr_soul_misha, image_index, (x + shakex), (y + shakey), 0.5, 0.5, 0, image_blend, image_alpha)
draw_sprite(spr_ballooney_battle, ballooneyfaces, 160, (64 - ballooneyextra))
draw_sprite_ext(spr_whitescreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, whitescreen)

