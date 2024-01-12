if instance_exists(obj_protagonist)
{
    if (place_meeting(x, y, obj_protagonist) && (!(place_meeting(obj_protagonist.x, obj_protagonist.y, obj_slippygoo_move))))
        instance_create(obj_protagonist.x, obj_protagonist.y, obj_slippygoo_move)
}

