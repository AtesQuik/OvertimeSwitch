progress = 26
with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
with (obj_db_ufo)
{
    progress = 0
    alarm[0] = 1
}
with (obj_menu)
    instance_destroy()
with (obj_music_player)
    instance_destroy()

