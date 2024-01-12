if (saved == 0)
{
    draw_sprite_ext(spr_b_gear, 0, (x + extrax), (y + extray), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    draw_sprite_ext(spr_b_gear, 1, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
}
else
    draw_sprite_ext(spr_b_gearsaved, 0, x, y, image_xscale, image_yscale, image_angle, c_lime, image_alpha)
draw_set_color(c_red)
draw_text((x - 20), (y - 5), string_hash_to_newline(("X " + string(x))))
draw_text((x - 20), (y + 5), string_hash_to_newline(("Y " + string(y))))
draw_text((x - 20), (y + 15), string_hash_to_newline(("startx " + string(startx))))
draw_text((x - 20), (y + 25), string_hash_to_newline(("starty " + string(starty))))
draw_set_color(c_white)

