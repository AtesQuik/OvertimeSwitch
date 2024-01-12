audio_play_sound(snd_activate_save, 1, false)
if (global.playerhealth > (global.fullhealth - healamount))
    global.playerhealth = global.fullhealth
else
    global.playerhealth += healamount
instance_destroy()
