if (attacking == 0)
    draw_sprite_ext(spr_dispenser_tiny, image_index, x, y, (1 + (extrastuff / 2)), (1 + (extrastuff / 2)), image_angle, image_blend, image_alpha)
else
    draw_sprite_ext(spr_dispenser_tiny_attack, image_index, x, y, (1 + (extrastuff / 2)), (1 + (extrastuff / 2)), image_angle, image_blend, image_alpha)

