if (global.bleeding == 1)
{
    draw_set_font(font_battle_big)
    draw_set_color(c_fuchsia)
    draw_text_transformed(200, 200, string_hash_to_newline("BLEED"), 0.5, 0.5, 0)
    draw_set_font(font_standard)
    draw_sprite(spr_bleedbar, 0, 138, 200)
    draw_sprite_stretched(spr_bleedbar, 1, 138, 200, 12, (12 - round(((12 / global.fullhealth) * global.playerhealth))))
    draw_sprite(spr_health_plus, 0, 138, 200)
    draw_set_color(c_white)
}

