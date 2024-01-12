if (global.sniperkilled == 0)
    draw_sprite_ext(spr_sniper, 0, 171, 128, -1, 1, image_angle, image_blend, image_alpha)
else
{
    draw_sprite(spr_pro_right, 0, 172, 123)
    script_execute(scr_draw_hats_van)
}
draw_sprite(sprite_index, image_index, x, y)

