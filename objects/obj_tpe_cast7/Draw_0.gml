draw_set_color(c_white)
draw_set_font(font_huge)
draw_text(103, 170, string_hash_to_newline("THE END"))
draw_set_font(font_standard)
draw_set_color(c_white)
draw_sprite_ext(spr_blackscreen, 0, 0, 190, 1, 1, 0, image_blend, endblack)
draw_sprite(spr_creditsphoto, 7, 160, 90)
draw_sprite_ext(spr_blackscreen, 0, 0, 0, 1, 1, 0, image_blend, blackscreen)

