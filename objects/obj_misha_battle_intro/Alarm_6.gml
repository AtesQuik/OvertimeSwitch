progress = 13
audio_play_sound(snd_enemy_hurt, 1, false)
audio_play_sound(snd_soul_broken, 1, false)
audio_play_sound(snd_soul_shatter, 1, false)
textprogress = 1
with (instance_create(0, 0, obj_mbm_whitescreen))
    whitespeed = 1
with (instance_create((275 + irandom_range(-25, 25)), (225 + irandom_range(-8, 8)), obj_sparedust))
    blackness = 1
with (instance_create((275 + irandom_range(-25, 25)), (225 + irandom_range(-8, 8)), obj_sparedust))
    blackness = 1
with (instance_create((275 + irandom_range(-25, 25)), (225 + irandom_range(-8, 8)), obj_sparedust))
    blackness = 1
with (instance_create((275 + irandom_range(-25, 25)), (225 + irandom_range(-8, 8)), obj_sparedust))
    blackness = 1
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(265, 230, 3)
    image_index = 2
}
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(285, 225, 3)
    image_index = 3
}
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(275, 225, 3)
    image_index = 4
}
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(260, 250, 3)
    image_index = 5
}
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(270, 240, 3)
    image_index = 6
}
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(290, 235, 3)
    image_index = 7
}
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(285, 245, 3)
    image_index = 8
}
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(320, 240, 3)
    image_index = 9
}
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(320, 215, 3)
    image_index = 10
}
with (instance_create(250, 215, obj_mbm_mercy))
{
    move_towards_point(320, 225, 3)
    image_index = 11
}
action_set_alarm(60, 7)

