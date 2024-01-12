counter += 1
if (counter == 30)
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 211
    progress = 1
    alarm[0] = 90
}
if (progress == 2)
{
    y += 1
    if (y == 1300)
        progress = 3
}
if (progress == 3)
{
    y = 120
    instance_create(160, 120, obj_tpe_special_mentions)
    progress = 4
}
if (progress == 4)
    instance_destroy()

