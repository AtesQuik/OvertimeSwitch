if (global.hospitalprogress == 6 && (!instance_exists(obj_text_box)))
    draw_sprite(sprite_index, image_index, x, y)
else
    draw_sprite(sprite_index, npcdirection, x, y)

