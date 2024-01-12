with (obj_music_player)
    instance_destroy()
instance_create(70, 150, obj_m_floorsword)
instance_create(70, 170, obj_m_floorsword)
with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
alarm[6] = 30
