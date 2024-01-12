if ((!instance_exists(obj_box_to_evade)) && (!instance_exists(obj_evade_ground)) && (!instance_exists(obj_evade_to_box)))
    draw_sprite(spr_battlebox_border, 0, 0, 0)
if (!instance_exists(obj_soul_battle_select))
{
    draw_sprite_ext(spr_bottom_row_text, 0, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 24), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
    if (instance_exists(obj_misha_battle) || global.playername == "Jacket" || global.playername == "Batter")
        draw_rectangle_colour(240, 210, 320, 240, c_black, c_black, c_black, c_black, 0)
}
script_execute(scr_draw_battle_stats)

