counter += 1
if (progress == 0)
{
    y += 1
    if (y == 2900)
        progress = 1
}
if (progress == 1)
{
    with (obj_music_player)
        instance_destroy()
    progress = 2
    alarm[0] = 300
}

