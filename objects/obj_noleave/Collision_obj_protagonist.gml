audio_play_sound(snd_exclamation, 1, false)
instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
with (obj_pro_stopped)
    image_index = obj_protagonist.prodirection
with (obj_protagonist)
    instance_destroy()
alarm[0] = 5
