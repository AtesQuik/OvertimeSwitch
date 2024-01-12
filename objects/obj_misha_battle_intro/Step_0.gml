if (progress == 0)
{
    progress = 1
    with (instance_create(0, 0, obj_text_box_misha))
    {
        MAXSTR = 3
        STR[0] = "* (A weak lightbulb#  illuminates the hall.)"
        STR[1] = "* (Two metallic hearts are#  beating in unison.)"
        STR[2] = "* (It seems like you've#  reached your goal.)"
        STR[3] = "* (You're very close to your#          TERMINATION.)"
    }
}
if (progress == 1 && (!instance_exists(obj_text_box_misha)))
{
    progress = 2
    alarm[0] = 30
}
if (progress == 3 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 0
    if (obj_speech_bubble_noevade.N == 1)
        heads = 1
    if (obj_speech_bubble_noevade.N == 2)
        heads = 0
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    audio_play_sound(snd_sword1, 1, false)
    progress = 4
    alarm[1] = 2
    alarm[2] = 4
}
if (progress == 4)
{
    heads = 2
    if (x > 100)
        x -= 10
    if (move1 == 1)
    {
        if (x1 > 100)
            x1 -= 10
    }
    if (move2 == 1)
    {
        if (x2 > 100)
            x2 -= 10
        else
            progress = 5
    }
}
if (progress == 5)
{
    alarm[3] = 30
    progress = 6
}
if (progress == 7)
{
    audio_play_sound(snd_pullout, 1, false)
    instance_create(x, y, obj_mbm_whitescreen)
    image_index = 0
    progress = 8
    gunout = 1
    image_speed = 0.4
}
if (progress == 8)
{
    if (image_index >= 3)
    {
        image_index = 3
        progress = 10
        image_speed = 0
        alarm[5] = 60
    }
}
if (progress == 11)
{
    if (armangle < 30)
        armangle += 3
    else
    {
        progress = 12
        alarm[6] = 30
    }
}
if (progress == 13)
{
    image_speed = 0.5
    if (armangle > -30)
        armangle -= 10
    if (image_index >= 3)
    {
        image_index = 3
        image_speed = 0
    }
}
if (progress == 14 && (!instance_exists(obj_mbm_whitescreen)))
{
    progress = 16
    alarm[8] = 60
}

