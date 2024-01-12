function scr_draw_battle_stats() {
	draw_set_font(font_battle_big)
	draw_text_transformed(16, 200, string_hash_to_newline(global.playername), 0.5, 0.5, 0)
	draw_text_transformed(66, 200, string_hash_to_newline("LV"), 0.5, 0.5, 0)
	draw_text_transformed(86, 200, string_hash_to_newline(global.playerlevel), 0.5, 0.5, 0)
	draw_text_transformed(118, 200, string_hash_to_newline("HP"), 0.5, 0.5, 0)
	if (global.playerhealth > 9)
	    draw_text_transformed(158, 200, string_hash_to_newline(((string(global.playerhealth) + " / ") + string(global.fullhealth))), 0.5, 0.5, 0)
	if (global.playerhealth <= 9)
	    draw_text_transformed(158, 200, string_hash_to_newline(((("0" + string(global.playerhealth)) + " / ") + string(global.fullhealth))), 0.5, 0.5, 0)
	if (global.playerhealth <= 0)
	    draw_text_transformed(158, 200, string_hash_to_newline(("00 / " + string(global.fullhealth))), 0.5, 0.5, 0)
	draw_sprite(spr_redbar, 0, 138, 200)
	draw_sprite_stretched(spr_healthbar, 0, 138, 200, 12, (12 - round(((12 / global.fullhealth) * global.playerhealth))))
	draw_sprite(spr_health_plus, 0, 138, 200)
	draw_set_font(font_standard)



}
