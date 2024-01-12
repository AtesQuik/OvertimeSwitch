draw_set_font(font_menu)
draw_set_color(c_lime)
draw_text_ext(89, 20, string_hash_to_newline("---Instruction---"), 18, 320)
draw_text_ext(77, 50, string_hash_to_newline("[Space] - Confirm, Activate#[Shift] - Cancel, Skip dialogue#[CTRL] - Menu (In-game)#[F4] - Fullscreen#[Hold ESC] - Quit#When your HP is 0, you lose.#Press any key to continue."), 18, 320)
draw_set_color(c_white)
draw_set_font(font_standard)
draw_sprite_ext(spr_blacklines, 0, 0, 0, 1, 1, 0, c_black, 0.3)

