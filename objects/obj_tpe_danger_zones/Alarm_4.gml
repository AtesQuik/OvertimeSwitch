alarm[1] = 60
zones = 0
showzones = 1
audio_play_sound(snd_mishawarning, 1, false)
if (zonechoice == 0)
    zonechoice = choose(1, 2)
else if (zonechoice == 1)
    zonechoice = choose(0, 2)
else if (zonechoice == 2)
    zonechoice = choose(1, 0)
alarm[3] = 30
