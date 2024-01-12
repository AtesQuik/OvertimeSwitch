with (obj_music_player)
    instance_destroy()
audio_play_sound(snd_tv, 1, false)
global.pyrodark = 1
tv = 1
global.pyroprogress = 9
with (obj_music_player)
    instance_destroy()
with (obj_pl_evade_soul)
    instance_destroy()
with (instance_create(global.soulxposition, global.soulyposition, obj_pl_soulmove2))
{
    movetox = 320
    movetoy = 120
}

