audio_play_sound(snd_activate_save, 1, false)
if (global.playerhealth > (global.fullhealth - 4))
    global.playerhealth = global.fullhealth
else
    global.playerhealth += 4
instance_destroy()
