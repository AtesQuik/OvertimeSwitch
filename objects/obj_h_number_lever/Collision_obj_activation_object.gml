audio_play_sound(snd_step, 1, false)
with (obj_activation_object)
    instance_destroy()
instance_create(obj_protagonist.x, obj_protagonist.y, obj_roomchange)
with (obj_roomchange)
{
    roomname = 18
    xpos = 390
    ypos = 240
    pdirection = 2
}
