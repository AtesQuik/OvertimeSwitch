draw_sprite_ext(spr_lethal_tail, 0, (x - 14), (y + 8), 1, 1, (-9 + tailangle), image_blend, image_alpha)
draw_sprite(spr_lethal_battle, 5, x, (y - leg1y))
draw_sprite(spr_lethal_battle, 6, x, ((y - 5) + leg1y))
draw_sprite(spr_lethal_battle, 2, x, y)
draw_sprite(spr_lethal_battle, 3, x, (y - leg1y))
draw_sprite(spr_lethal_battle, 4, x, ((y - 5) + leg1y))
draw_sprite(spr_lethal_eye, eyeprogress, x, y)
draw_sprite(spr_lethal_battle, 1, (x + headshakex), (y + headshakey))
draw_sprite(spr_lethal_battle, 0, x, (y - extrahead))

