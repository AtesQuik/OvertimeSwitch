orangeorblue = 0
if (y > 160)
    toporbottom = 1
else
    toporbottom = 0
spd = 0
audio_play_sound(snd_syringe, 1, false)
if (toporbottom == 1)
{
    image_angle = 90
    move_towards_point(x, 240, spd)
}
if (toporbottom == 2)
{
    image_angle = 270
    move_towards_point(x, 0, spd)
}
alarm[0] = 30
damagedone = 0

