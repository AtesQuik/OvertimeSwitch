if (shakeleft == 0)
{
    if (shaking < 5)
        shaking += (2 + (increase / 5))
    else
    {
        shaking = 5
        shakeleft = 1
    }
}
if (shakeleft == 1)
{
    if (shaking > 0)
        shaking -= (2 + (increase / 5))
    else
    {
        shaking = 0
        shakeleft = 0
    }
}
if (increase < 10)
{
    increase += 0.05
    extend += 0.01
}
if ((!audio_is_playing(snd_transformation)) && progress == 0)
{
    progress = 1
    instance_create(x, y, obj_mc_whitescreen)
}
if (progress == 1 && (!audio_is_playing(snd_shoot)))
{
    progress = 2
    alarm[0] = 30
}
if (progress == 3 && (!audio_is_playing(snd_ohyeah)))
{
    with (obj_mc_whitescreen)
    {
        if (blackness < 1)
            blackness += 0.05
        else
            obj_mc_transformation.progress = 4
    }
}
if (progress == 4)
{
    progress = 5
    alarm[1] = 30
}
if (progress == 6)
{
    if (lighty < 0)
        lighty += 1
    else
    {
        audio_play_sound(snd_step, 1, false)
        progress = 7
    }
}
if (progress == 7)
{
    alarm[2] = 30
    progress = 8
}
if (progress == 9)
{
    if instance_exists(obj_mc_scouttransform)
    {
        if (obj_mc_scouttransform.scoutalpha < 1)
            obj_mc_scouttransform.scoutalpha += 0.01
        else
        {
            alarm[4] = 1
            progress = 10
        }
    }
}
if (progress == 11 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 12
    audio_play_sound(snd_blink2, 1, false)
    with (obj_music_player)
        instance_destroy()
    instance_create(x, y, obj_mc_transformwhite)
    with (obj_mc_scoutsmoke)
        instance_destroy()
}
if (progress == 12 && (!instance_exists(obj_mc_transformwhite)))
{
    obj_mc_scouttransform.scoutblend = image_blend
    progress = 13
    alarm[5] = 30
    whitescreen = 0
}
if (progress == 14 && (!instance_exists(obj_speech_bubble_noevade)))
{
    script_execute(scr_save_story)
    room_goto(rm_mc_scout_battle)
}

