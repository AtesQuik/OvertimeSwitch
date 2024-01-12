with (obj_music_player)
    instance_destroy()
with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = 2
    instance_destroy()
}
progress = 1
