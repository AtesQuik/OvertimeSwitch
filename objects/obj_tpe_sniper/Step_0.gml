if (progress == 0)
{
    if (y < 75)
        y += 5
    else
        progress = 1
    if (obj_tpe_jane.x < 185)
        obj_tpe_jane.x += 3
    if (obj_tpe_dell.x > 105)
        obj_tpe_dell.x -= 3
}
if (progress == 1)
{
    progress = 2
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 96
        MAXSTR = 1
        STR[0] = "I hope#we're#even#now."
        STR[1] = "I had#to pick#up this#guy too."
    }
}
if (progress == 2 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_eli1.heads = 17
    progress = 3
    path_start(path_tpe_sniper, 7, path_action_stop, 0)
    instance_create(125, -55, obj_tpe_spy)
}

