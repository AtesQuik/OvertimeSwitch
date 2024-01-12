spd = 5
damagedone = 0
audio_play_sound(snd_glass_break, 1, false)
gotox = choose(80, 240)
gotoy = 80
progress = 0
alarm[0] = 1
image_alpha = 1
fly = 0
if instance_exists(obj_tpe_jar_drop)
{
    with (obj_tpe_jar_drop)
        instance_destroy()
}

