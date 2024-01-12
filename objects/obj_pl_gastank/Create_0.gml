progress = 0
topx = 0
topy = 0
topangle = 0
image_speed = 0.5
if (x < 320)
    tankdir = 0
else
    tankdir = 1
if (!audio_is_playing(snd_tankgas))
    audio_play_sound(snd_tankgas, 1, false)
progress = 1
if (tankdir == 0)
    instance_create((x + 30), (y - 65), obj_pl_gas)
else
    instance_create((x - 30), (y - 65), obj_pl_gas)

