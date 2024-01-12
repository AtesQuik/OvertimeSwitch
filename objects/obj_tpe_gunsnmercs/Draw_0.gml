if (progress == 0)
{
    draw_sprite(spr_textbox_battle, 0, 0, 0)
    draw_text_ext(26, 135, string_hash_to_newline(string_copy(textstring, 1, POS)), 18, 237)
    if (guiprogress < 4)
    {
        draw_sprite_ext(spr_bottom_row_text, guix, 0, 0, 0.5, 0.5, 0, image_blend, guialpha)
        draw_sprite_ext(spr_fightbox_black, 0, x, y, 1, 1, 0, image_blend, (1 - guialpha))
        draw_sprite_ext(spr_textbox_fighting, 0, x, y, 1, 1, 0, image_blend, (1 - guialpha))
    }
}
if (progress > 0)
    draw_sprite_ext(spr_bottom_row_text, guix, 0, 0, 0.5, 0.5, 0, image_blend, guialpha)
if (progress < 3)
{
    if (guix == 0)
        draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 24), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
    if (guix == 1)
        draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 100), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
    if (guix == 2)
        draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 180), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
    if (guix == 3)
        draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 258), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
}
draw_sprite_ext(spr_blackscreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, blackscreen)
if (progress > 92)
{
    draw_sprite_ext(spr_intro_flashback, flashbackindex, 0, 0, 1, 1, 0, image_blend, flashbackalpha)
    draw_sprite_ext(spr_blacklines, 0, 0, 0, 1, 1, 0, c_black, 0.3)
}
if (progress >= 7 && (!instance_exists(obj_tpe_soulmove)) && (!instance_exists(obj_tpe_evade_soul)) && (!instance_exists(obj_tpe_fight)))
    draw_sprite_ext(spr_soul, 0, 160, 160, 0.5, 0.5, 0, c_white, 1)
if (!instance_exists(obj_tpe_evade_soul))
    script_execute(scr_draw_battle_stats)

