audio_play_sound(snd_step, 1, false)
with (obj_enemy_attack_parent)
    instance_destroy()
if audio_is_playing(snd_justice_blast)
    audio_stop_sound(snd_justice_blast)
alarm[0] = 30

