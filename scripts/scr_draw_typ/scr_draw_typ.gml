function scr_draw_typ() {
	draw_set_color(txtcol)
	draw_set_font(txtfnt)
	draw_set_alpha(stal)
	draw_text_ext(drx, dry, string_hash_to_newline(drwst), stsep, stmw)
	draw_set_color(c_black)
	draw_set_alpha(1)



}
