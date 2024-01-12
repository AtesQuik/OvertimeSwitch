function scr_soul_draw() {
	if (global.soultype == 0)
	    draw_sprite_ext(sprite_index, image_index, x, y, 0.5, 0.5, 0, image_blend, image_alpha)
	if (global.soultype == 1)
	    draw_sprite_ext(spr_soul_white, image_index, x, y, 0.5, 0.5, 0, c_orange, image_alpha)
	if (global.soultype == 2)
	    draw_sprite_ext(spr_soul_white, image_index, x, y, 0.5, 0.5, 0, c_green, image_alpha)
	if (global.soultype == 3)
	{
	    draw_line_width_colour(128, 140, 191, 140, 0.5, c_purple, c_purple)
	    draw_line_width_colour(128, 160, 191, 160, 0.5, c_purple, c_purple)
	    draw_line_width_colour(128, 180, 191, 180, 0.5, c_purple, c_purple)
	    draw_sprite_ext(spr_soul_white, image_index, x, y, 0.5, 0.5, 0, c_purple, image_alpha)
	}
	if (global.soultype == 4)
	    draw_sprite_ext(spr_soul_white, image_index, x, y, 0.5, 0.5, 0, c_yellow, image_alpha)
	if (global.soultype == 5)
	    draw_sprite_ext(spr_soul_white, image_index, x, y, 0.5, 0.5, 0, c_blue, image_alpha)



}
