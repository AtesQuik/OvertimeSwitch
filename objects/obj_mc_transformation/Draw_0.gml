if (progress < 5)
{
    draw_sprite_ext(spr_dispenser_battle, image_index, x, y, (1 + (extend / 10)), (1 + (extend / 10)), ((2.5 - shaking) * increase), image_blend, image_alpha)
    draw_sprite_ext(spr_dispenser_battle_ohno, 0, x, y, (1 + (extend / 10)), (1 + (extend / 10)), ((2.5 - shaking) * increase), image_blend, image_alpha)
}
else
{
    draw_sprite_ext(spr_blackscreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, image_alpha)
    if (progress >= 6 && smokeon == 0 && progress < 13)
    {
        draw_sprite_ext(spr_dispenser_lights, 0, __view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + lighty), 1, 1, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_dispenser_lights, 0, (__view_get( e__VW.XView, (0 << 0) ) + 320), (__view_get( e__VW.YView, (0 << 0) ) + lighty), -1, 1, 0, image_blend, image_alpha)
    }
    if (smokeon == 1 && progress < 13)
    {
        draw_sprite_ext(spr_dispenser_lights, 1, __view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + lighty), 1, 1, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_dispenser_lights, 1, (__view_get( e__VW.XView, (0 << 0) ) + 320), (__view_get( e__VW.YView, (0 << 0) ) + lighty), -1, 1, 0, image_blend, image_alpha)
    }
    draw_sprite_ext(spr_whitescreen, 0, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, image_angle, image_blend, whitescreen)
}

