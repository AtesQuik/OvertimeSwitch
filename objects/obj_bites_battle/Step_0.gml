if (progress == 0)
{
    sprite_index = spr_bites_battle_nom
    image_speed = 0.2
}
if (progress == 1)
{
    sprite_index = spr_bites_battle_surprised
    image_speed = 0
    image_index = 0
}
if (progress == 2)
{
    sprite_index = spr_bites_battle_surprised
    image_speed = 0
    image_index = 1
}
if (progress == 3)
{
    sprite_index = spr_bites_battle_scoot
    image_speed = 0.2
}
if instance_exists(obj_speech_bubble_noevade)
{
    if (obj_speech_bubble_noevade.N == 1 && progress == 0)
        progress = 1
    if (obj_speech_bubble_noevade.N == 2 && progress == 1)
        progress = 2
}
if (progress == 2 && (!instance_exists(obj_speech_bubble_noevade)))
    progress = 3
if (progress == 3)
{
    if (x < 360)
        x += 2
    else
    {
        progress = 4
        alarm[1] = 15
    }
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    with (obj_jane_extra_box)
        instance_destroy()
    instance_destroy()
}
if instance_exists(obj_evade_ground)
{
    with (obj_evade_ground)
        alarm[1] = 2
}

