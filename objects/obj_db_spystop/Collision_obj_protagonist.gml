with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
alarm[0] = 30
