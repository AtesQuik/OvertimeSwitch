with (obj_text_box)
    action_kill_object()
with (obj_music_player)
    action_kill_object()
action_create_object(obj_sani1_moving, 360, 90)
action_create_object(obj_pro_stopped, obj_protagonist.x, obj_protagonist.y)
with (obj_pro_stopped)
    image_index = 0
with (other.id)
    action_kill_object()
action_kill_object()