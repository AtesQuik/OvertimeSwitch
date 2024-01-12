if (!instance_exists(obj_dell_handattack))
{
    draw_sprite(spr_dell_battle_legs, 0, x, y)
    draw_sprite(spr_dell_battle_torso, 0, x, y)
    draw_sprite(spr_dell_battle_head, heads, x, y)
}
draw_sprite_ext(spr_bottom_row_text, 4, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
script_execute(scr_draw_battle_stats)
if (progress == 2)
    draw_sprite_ext(spr_blackscreen, 0, 0, 0, 2, 2, 0, c_black, 1)

