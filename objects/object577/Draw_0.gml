draw_sprite(spr_damage_bar_pyro, 1, 93, 430)
draw_sprite_stretched(spr_damage_bar_pyro, 2, 93, 430, round(((454 / global.pyromaxhp) * global.pyrohp)), 22)
draw_sprite(spr_damage_bar_pyro, 0, 93, 430)
draw_text(0, 0, string_hash_to_newline(("X " + string(x))))
draw_text(100, 0, string_hash_to_newline(("Y " + string(y))))
draw_text(0, 18, string_hash_to_newline(("Xsc " + string(image_xscale))))
draw_text(100, 18, string_hash_to_newline(("Ysc " + string(image_yscale))))
draw_text(0, 36, string_hash_to_newline(("Angle " + string(image_angle))))

