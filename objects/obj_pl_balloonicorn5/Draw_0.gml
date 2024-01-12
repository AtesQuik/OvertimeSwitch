draw_sprite_ext(spr_pyro_full, 0, 0, 0, 1, 1, 0, pyrocolor, 1)
draw_sprite_ext(spr_blackscreen, 0, 0, 0, 2, 2, 0, c_black, blackness)
if (progress < 3)
{
    draw_sprite_ext(spr_ballooney_blank, 0, 375, 240, 2, 2, image_angle, balloonicolor, 1)
    if (progress >= 1)
        draw_sprite_ext(spr_ballooney_blank, 0, 265, 240, -2, 2, (-image_angle), c_lime, 1)
}
else
{
    draw_sprite_ext(spr_pyro_noise, image_index, 230, 184, 0.75, 0.75, 0, c_white, image_alpha)
    draw_sprite_ext(spr_pyro_noise, image_index, 330, 190, 0.75, 0.75, 0, c_white, image_alpha)
    draw_sprite_ext(spr_pyro_gasmask, 0, 320, 280, 0.75, 0.75, 0, c_black, 1)
}

