audio_play_sound(snd_shoot, 1, false)
image_angle = point_direction(x, y, global.soulxposition, global.soulyposition)
move_towards_point(global.soulxposition, global.soulyposition, 5)
alarm[0] = 60
damagedone = 0
action_set_alarm(60, 0)

