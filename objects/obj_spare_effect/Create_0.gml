alarm[0] = 1
if (!audio_is_playing(snd_spare))
    audio_play_sound(snd_spare, 1, false)
instance_create((x + random_range(0, -32)), (y + random_range(0, -16)), obj_sparedust)
instance_create((x + random_range(0, -32)), (y + random_range(-16, -32)), obj_sparedust)
instance_create((x + random_range(0, 32)), (y + random_range(0, -16)), obj_sparedust)
instance_create((x + random_range(0, 32)), (y + random_range(-16, -32)), obj_sparedust)
instance_create((x + random_range(0, 32)), (y + random_range(0, 16)), obj_sparedust)
instance_create((x + random_range(0, 32)), (y + random_range(16, 32)), obj_sparedust)
instance_create((x + random_range(0, -32)), (y + random_range(0, 16)), obj_sparedust)
instance_create((x + random_range(0, -32)), (y + random_range(16, 32)), obj_sparedust)

