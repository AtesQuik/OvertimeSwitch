audio_play_sound(snd_glass_break, 1, false)
with (obj_misha_death)
    progress = 12
with (instance_create(x, y, obj_misha_bottle_shards))
{
    image_index = 0
    image_angle = other.image_angle
}
with (instance_create(x, y, obj_misha_bottle_shards))
{
    image_index = 1
    image_angle = other.image_angle
}

