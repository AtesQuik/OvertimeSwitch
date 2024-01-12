audio_play_sound(snd_soul_shatter, 1, false)
with (instance_create((x - 4), (y - 4), obj_misha_heartbit))
{
    image_index = 0
    soulbit = 0
}
with (instance_create((x + 4), (y - 4), obj_misha_heartbit))
{
    image_index = 1
    soulbit = 1
}
with (instance_create((x + 4), (y + 4), obj_misha_heartbit))
{
    image_index = 0
    soulbit = 2
}
with (instance_create((x - 4), (y + 4), obj_misha_heartbit))
{
    image_index = 1
    soulbit = 3
}
progress = 2
action_set_alarm(90, 3)

