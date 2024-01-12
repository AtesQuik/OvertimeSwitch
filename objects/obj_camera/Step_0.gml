if instance_exists(obj_protagonist)
{
    if (obj_protagonist.x < (x - 20))
        image_index = 0
    if (obj_protagonist.x >= (x - 20) && obj_protagonist.x < (x + 20))
        image_index = 1
    if (obj_protagonist.x >= (x + 20))
        image_index = 2
}

