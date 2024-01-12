if instance_exists(obj_protagonist)
    draw_sprite(spr_pro_stand, obj_protagonist.prodirection, obj_protagonist.x, obj_protagonist.y)
if instance_exists(obj_pro_stopped)
    draw_sprite(spr_pro_stand, obj_pro_stopped.image_index, obj_pro_stopped.x, obj_pro_stopped.y)
draw_sprite(sprite_index, image_index, x, y)

