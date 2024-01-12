if instance_exists(obj_music_player)
{
    with (obj_music_player)
        instance_destroy()
}
global.textboxtop = 1
with (obj_protagonist)
{
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = 2
    instance_destroy()
}
progress = 1
mishaindex = 0
eliindex = 0
alarm[0] = 30
instance_create(190, 118, obj_db_exclamation)
