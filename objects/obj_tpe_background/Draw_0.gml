if (instance_exists(obj_tpe_mercs) && reverse == 0)
    draw_sprite_ext(spr_flashbacks, obj_tpe_mercs.merc, (obj_tpe_mercs.x - 160), 0, 1, 1, 0, c_white, obj_tpe_mercs.image_alpha)
if (phasetwo == 0)
{
    draw_sprite_ext(spr_tpe_effects, 0, (bg1x + 320), 125, 5, 5, 0, c_red, bg1alpha)
    draw_sprite_ext(spr_tpe_effects, 0, bg1x, 125, 5, 5, 0, c_red, bg1alpha)
    draw_sprite_ext(spr_tpe_effects, 0, (bg1x - 320), 125, 5, 5, 0, c_red, bg1alpha)
    draw_sprite_ext(spr_tpe_effects, 0, ((-bg2x) + 320), 125, -5, -5, 0, c_blue, bg2alpha)
    draw_sprite_ext(spr_tpe_effects, 0, (-bg2x), 125, -5, -5, 0, c_blue, bg2alpha)
    draw_sprite_ext(spr_tpe_effects, 0, ((-bg2x) + 640), 125, -5, -5, 0, c_blue, bg2alpha)
}
if (phasetwo == 1 || reverse == 1)
{
    draw_sprite_ext(spr_tpe_effects, 1, (bg1x + 320), 125, 5, 5, 0, c_blue, (bg1alpha - 0.1))
    draw_sprite_ext(spr_tpe_effects, 1, bg1x, 125, 5, 5, 0, c_blue, (bg1alpha - 0.1))
    draw_sprite_ext(spr_tpe_effects, 1, (bg1x - 320), 125, 5, 5, 0, c_blue, (bg1alpha - 0.1))
    draw_sprite_ext(spr_tpe_effects, 1, ((-bg2x) + 320), 125, -5, -5, 0, c_red, (bg2alpha - 0.1))
    draw_sprite_ext(spr_tpe_effects, 1, (-bg2x), 125, -5, -5, 0, c_red, (bg2alpha - 0.1))
    draw_sprite_ext(spr_tpe_effects, 1, ((-bg2x) + 640), 125, -5, -5, 0, c_red, (bg2alpha - 0.1))
    draw_sprite_ext(spr_tpe_effects, 2, 160, ((-bg3y) + 320), -5, -5, 0, c_purple, bg3alpha)
    draw_sprite_ext(spr_tpe_effects, 2, 160, (-bg3y), -5, -5, 0, c_purple, bg3alpha)
    draw_sprite_ext(spr_tpe_effects, 2, 160, ((-bg3y) + 640), -5, -5, 0, c_purple, bg3alpha)
}
draw_sprite_ext(spr_blackscreen, image_index, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), 1, 1, 0, image_blend, blackscreen)

