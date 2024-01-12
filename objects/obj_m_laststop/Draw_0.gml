if (progress == 6)
    draw_sprite_ext(spr_demodrama, 0, (__view_get( e__VW.XView, (0 << 0) ) + 160), (__view_get( e__VW.YView, (0 << 0) ) + 120), 1.5, 1.5, 315, image_blend, image_alpha)
if (progress == 7)
    draw_sprite_ext(spr_demodrama, 0, (__view_get( e__VW.XView, (0 << 0) ) + 160), (__view_get( e__VW.YView, (0 << 0) ) + 120), 1.5, -1.5, 225, image_blend, image_alpha)
if (progress == 8)
    draw_sprite_ext(spr_demodrama, 0, (__view_get( e__VW.XView, (0 << 0) ) + 160), (__view_get( e__VW.YView, (0 << 0) ) + 120), 1.5, 1.5, 135, image_blend, image_alpha)
if (progress == 9)
    draw_sprite_ext(spr_demodrama, 0, (__view_get( e__VW.XView, (0 << 0) ) + 160), (__view_get( e__VW.YView, (0 << 0) ) + 140), 1.5, 1.5, 0, image_blend, image_alpha)
if (poster == 1)
{
    if (global.genocide == 1)
        draw_sprite(spr_poster, 2, (obj_m_tavishlast.x - 20), (obj_m_tavishlast.y + 10))
    else if (global.enemieskilled == 0)
        draw_sprite(spr_poster, 1, (obj_m_tavishlast.x - 20), (obj_m_tavishlast.y + 10))
    else if (global.enemieskilled != 0)
        draw_sprite(spr_poster, 0, (obj_m_tavishlast.x - 20), (obj_m_tavishlast.y + 10))
}

