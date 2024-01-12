if (opendoor == 0)
    draw_sprite(spr_theater_foreground, 0, 0, 0)
else
{
    draw_sprite_ext(spr_eli_stand, 0, 261, 50, 3, 3, image_angle, c_black, image_alpha)
    if (eli == 0)
        draw_sprite(spr_eli_stand, 0, 261, 50)
    else
        draw_sprite(spr_eli_maniac, 0, 261, 50)
    draw_sprite(spr_theater_foreground, 1, 0, 0)
}

