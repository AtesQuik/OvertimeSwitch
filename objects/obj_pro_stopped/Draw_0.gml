if (!instance_exists(obj_soul_tobattle))
{
    if (!instance_exists(obj_mbm_darkness))
        draw_sprite(sprite_index, image_index, x, y)
    else
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_black, image_alpha)
}
scr_draw_hats()

