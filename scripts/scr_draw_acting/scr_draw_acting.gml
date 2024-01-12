function scr_draw_acting() {
	draw_sprite(spr_battlebox_border, 0, 0, 0)
	draw_sprite_ext(spr_soul, 0, ((__view_get( e__VW.XView, (0 << 0) ) + 36) + (128 * soul_topxpos)), ((__view_get( e__VW.YView, (0 << 0) ) + 126) + (16 * soul_ypos)), 0.5, 0.5, 0, image_blend, image_alpha)
	if (!instance_exists(obj_hurts_battle))
	    draw_text(49, 135, string_hash_to_newline("* Inspect"))
	else
	    draw_text(49, 135, string_hash_to_newline("* it hurts"))
	if (global.actoptions > 0)
	    draw_text(178, 135, string_hash_to_newline(("* " + string(global.act1))))
	if (global.actoptions > 1)
	    draw_text(49, 151, string_hash_to_newline(("* " + string(global.act2))))
	if (global.actoptions > 2)
	    draw_text(178, 151, string_hash_to_newline(("* " + string(global.act3))))



}
