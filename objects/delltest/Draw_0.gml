if (!instance_exists(obj_dell_handattack))
{
    draw_sprite(spr_dell_battle_legs, 0, x, y)
    draw_sprite(spr_dell_battle_torso, 0, (x + (extrax / 2)), (y + (extray / 2)))
    draw_sprite(spr_dell_battle_head, heads, (x + (extrax / 3)), (y + (extray / 3)))
}
draw_sprite(spr_ground, 0, mouse_x, mouse_y)
draw_text(50, 0, string_hash_to_newline(timer2))
draw_text(100, 0, string_hash_to_newline(timer3))
draw_text(0, 20, string_hash_to_newline(("x " + string(global.soulxposition))))
draw_text(0, 40, string_hash_to_newline(("y " + string(global.soulyposition))))

