if (progress == 0)
{
    if (bobupdown == 0)
    {
        if (image_angle < 30)
            image_angle += 3
        else
            bobupdown = 1
    }
    if (bobupdown == 1)
    {
        if (image_angle > -30)
            image_angle -= 3
        else
            bobupdown = 0
    }
    if (helpthere == 0 && instance_exists(obj_pl_helpbox))
        helpthere = 1
    if (helpthere == 1 && (!instance_exists(obj_pl_helpbox)))
    {
        if instance_exists(obj_pl_nail)
        {
            with (obj_pl_nail)
                saved = 1
        }
        progress = 1
        saved = 1
        with (obj_music_player)
            musictrack = 182
        alarm[1] = 360
    }
}
if (progress == 1)
{
    if (blackness < 1)
        blackness += 0.025
    if (bobupdown == 0)
    {
        if (image_angle < 30)
            image_angle += 1
        else
            bobupdown = 1
    }
    if (bobupdown == 1)
    {
        if (image_angle > -30)
            image_angle -= 1
        else
            bobupdown = 0
    }
}
if (progress == 3 && instance_exists(balloonattackparent))
{
    with (balloonattackparent)
        instance_destroy()
}
if (progress == 3 && (!audio_is_playing(snd_tv)))
    room_goto(rm_pl_pyro_fight)

