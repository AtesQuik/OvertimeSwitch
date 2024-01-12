if instance_exists(obj_protagonist)
{
    if (obj_protagonist.moving == 0)
        draw_sprite(spr_pbeer_stand, obj_protagonist.prodirection, obj_protagonist.x, obj_protagonist.y)
    else
    {
        if (obj_protagonist.prodirection == 0)
            draw_sprite(spr_pbeer_down, obj_protagonist.image_index, obj_protagonist.x, obj_protagonist.y)
        if (obj_protagonist.prodirection == 1)
            draw_sprite(spr_pbeer_right, obj_protagonist.image_index, obj_protagonist.x, obj_protagonist.y)
        if (obj_protagonist.prodirection == 2)
            draw_sprite(spr_pbeer_up, obj_protagonist.image_index, obj_protagonist.x, obj_protagonist.y)
        if (obj_protagonist.prodirection == 3)
            draw_sprite(spr_pbeer_left, obj_protagonist.image_index, obj_protagonist.x, obj_protagonist.y)
    }
}

