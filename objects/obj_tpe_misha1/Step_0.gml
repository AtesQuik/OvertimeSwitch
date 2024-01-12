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
    heads = 2
    progress = 4
    alarm[1] = 60
}
if (progress == 5)
{
    if (image_angle < 350)
        image_angle += 10
    else
        image_angle = 0
    if (x > -70)
    {
        x -= 4
        y -= 2
    }
    else
    {
        alarm[2] = 30
        progress = 6
    }
}

