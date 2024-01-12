with (obj_music_player)
    action_kill_object()
image_speed = 0
image_index = 3
with (instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped))
{
    image_index = 1
    if instance_exists(obj_view_parent)
    {
        obj_view_parent.x = x
        obj_view_parent.y = y
    }
    else
        instance_create(x, y, obj_view_parent)
}
with (obj_protagonist)
    instance_destroy()
itsover = 0
talking = 0
transparent = 1
action_set_alarm(30, 0)

