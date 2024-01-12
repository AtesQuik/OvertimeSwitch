audio_play_sound(snd_glass_break, 1, false)
if (lastjar == 0)
{
    if (startx == 80)
    {
        with (instance_create(240, 80, obj_tm_jar))
        {
            lastjar = 1
            damagedone = other.damagedone
        }
    }
    else if (startx == 240)
    {
        with (instance_create(80, 80, obj_tm_jar))
        {
            lastjar = 1
            damagedone = other.damagedone
        }
    }
}
with (instance_create(x, y, obj_tm_jar_shard))
{
    image_index = 0
    image_angle = other.image_angle
}
with (instance_create(x, y, obj_tm_jar_shard))
{
    image_index = 1
    image_angle = other.image_angle
}
with (instance_create(x, y, obj_tm_jar_drop))
{
    direction = 0
    damagedone = other.damagedone
}
with (instance_create(x, y, obj_tm_jar_drop))
{
    direction = 45
    damagedone = other.damagedone
}
with (instance_create(x, y, obj_tm_jar_drop))
{
    direction = 90
    damagedone = other.damagedone
}
with (instance_create(x, y, obj_tm_jar_drop))
{
    direction = 135
    damagedone = other.damagedone
}
with (instance_create(x, y, obj_tm_jar_drop))
{
    direction = 180
    damagedone = other.damagedone
}
with (instance_create(x, y, obj_tm_jar_drop))
{
    direction = 225
    damagedone = other.damagedone
}
with (instance_create(x, y, obj_tm_jar_drop))
{
    direction = 270
    damagedone = other.damagedone
}
with (instance_create(x, y, obj_tm_jar_drop))
{
    direction = 315
    damagedone = other.damagedone
}

