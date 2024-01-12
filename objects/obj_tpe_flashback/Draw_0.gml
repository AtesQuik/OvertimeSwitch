if (progress < 18)
{
    draw_sprite_ext(spr_intro_flashback, introindex, 0, 0, 1, 1, 0, image_blend, introalpha)
    draw_sprite_ext(spr_blacklines, 0, 0, 0, 1, 1, 0, c_black, 0.3)
}
else
{
    draw_sprite_ext(spr_ballooney_battle, ballooney, 190, (60 + shaking), image_xscale, image_yscale, image_angle, image_blend, 1)
    draw_sprite_ext(spr_pyro_battle, 0, 120, 70, image_xscale, image_yscale, image_angle, image_blend, 1)
}
draw_sprite_ext(spr_whitescreen, 0, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, whitescreen)

