if (dontdraw == 0)
    draw_sprite(sprite_index, image_index, x, y)
if (drawingmask == 1 && instance_exists(obj_pro_stopped))
{
    if (global.genocide == 1)
        draw_sprite(spr_paper_bag, 1, obj_pro_stopped.x, obj_pro_stopped.y)
    else if (global.genocide == 0)
        draw_sprite(spr_paper_bag, 0, obj_pro_stopped.x, obj_pro_stopped.y)
}

