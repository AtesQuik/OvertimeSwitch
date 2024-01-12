global.textboxtop = 0
with (obj_music_player)
    instance_destroy()
with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
alarm[0] = 30
