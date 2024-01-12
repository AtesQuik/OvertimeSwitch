if (!audio_is_playing(snd_rocketfall))
    audio_play_sound(snd_rocketfall, 1, false)
if leftorright
    x = irandom_range(10, 320)
else
    x = irandom_range(320, 630)
depth = -115
alarm[1] = 60
warning = 1

