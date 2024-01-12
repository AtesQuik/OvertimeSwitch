if (zonechoice == 0)
{
    left = 0
    middle = 1
    right = 1
}
if (zonechoice == 1)
{
    left = 1
    middle = 0
    right = 1
}
if (zonechoice == 2)
{
    left = 1
    middle = 1
    right = 0
}
audio_play_sound(snd_soul_shatter, 1, false)
alarm[2] = 1
alarm[4] = 30
zones = 1

