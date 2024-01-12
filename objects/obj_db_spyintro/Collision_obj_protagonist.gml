audio_play_sound(snd_shoot, 1, false)
with (obj_protagonist)
{
    global.playerxpos = x
    global.playerypos = y
    instance_create(x, y, obj_pro_stopped)
    obj_pro_stopped.image_index = obj_protagonist.prodirection
    instance_destroy()
}
alarm[0] = 60
