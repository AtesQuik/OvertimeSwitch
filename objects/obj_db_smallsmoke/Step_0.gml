y -= 1
if (image_alpha > 0)
    image_alpha -= 0.025
else
    instance_destroy()
draw_sprite_ext(sprite_index, image_index, x, x, 1, 1, image_angle, image_blend, image_alpha)

