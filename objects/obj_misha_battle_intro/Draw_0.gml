if (progress < 14)
{
    draw_sprite_ext(spr_bottom_row_text, 0, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 24), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
    script_execute(scr_draw_battle_stats)
    if (gunout == 0)
    {
        draw_sprite_ext(spr_misha_battle_still, 0, x2, y, 1, 1, 0, image_blend, 0.25)
        draw_sprite_ext(spr_misha_battle_head, heads, x2, y, 1, 1, 0, image_blend, 0.25)
        draw_sprite_ext(spr_misha_battle_still, 0, x1, y, 1, 1, 0, image_blend, 0.5)
        draw_sprite_ext(spr_misha_battle_head, heads, x1, y, 1, 1, 0, image_blend, 0.5)
        draw_sprite(spr_misha_battle_still, 0, x, y)
        draw_sprite(spr_misha_battle_head, heads, x, y)
    }
    if (gunout == 1)
    {
        draw_sprite(spr_misha_battle_gunarm1, image_index, x, y)
        draw_sprite(spr_misha_battle_head, heads, x, y)
    }
    if (gunout == 2)
    {
        draw_sprite(spr_whitescreen, 0, 0, 0)
        draw_sprite_ext(spr_bottom_row_text_black, textprogress, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_misha_battle_gunarm1, 4, x, y, 1, 1, 0, c_black, image_alpha)
        draw_sprite_ext(spr_misha_battle_head, heads, x, y, 1, 1, 0, c_black, image_alpha)
        draw_sprite_ext(spr_misha_battle_gunarm2, image_index, (x + 30), (y - 30), 1, 1, (-armangle), image_blend, image_alpha)
    }
}

