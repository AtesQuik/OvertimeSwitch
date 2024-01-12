audio_play_sound(snd_glass_break, 1, false)
with (instance_create(x, y, obj_h_beer_bottle_shard))
{
    image_index = 0
    image_angle = other.image_angle
}
with (instance_create(x, y, obj_h_beer_bottle_shard))
{
    image_index = 1
    image_angle = other.image_angle
}
with (obj_ballooney_fake_battle)
{
    if (progress == 2)
        progress = 3
}

