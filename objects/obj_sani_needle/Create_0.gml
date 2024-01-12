image_speed = 0
spd = 7
dir = 0
damagedone = 0
healornoheal = 0
progress = 0
if (!instance_exists(obj_tpe_syringe_gun))
    audio_play_sound(snd_syringe, 1, false)
if (global.playerhealth < 5)
    healornoheal = choose(0, 1, 1)

