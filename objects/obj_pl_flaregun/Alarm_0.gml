progress = 2
image_index = 1
audio_play_sound(snd_flaregun, 1, false)
if (gundir == 0)
{
    instance_create((x - 170), (y - 54), obj_pl_flareexhaust)
    instance_create((x - 112), (y - 54), obj_pl_flare)
}
else
{
    instance_create((x + 170), (y - 54), obj_pl_flareexhaust)
    instance_create((x + 112), (y - 54), obj_pl_flare)
}

