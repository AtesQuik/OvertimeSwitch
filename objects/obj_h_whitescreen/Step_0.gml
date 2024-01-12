if (whitescreen < 1)
    whitescreen += 0.01
if (!audio_is_playing(snd_whitescreen))
    instance_create(x, y, obj_room_fade_out)
scr_transition_when_ready()

