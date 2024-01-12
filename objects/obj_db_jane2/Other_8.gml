with (obj_pro_stopped)
    instance_destroy()
if instance_exists(obj_music_player)
{
    with (obj_music_player)
        musictrack = 128
}
else
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 128
}
global.teufortover = 1
instance_destroy()

