if (progress == 0)
{
    if (x > 235)
        x -= 6
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    obj_tpe_sani1.heads = 17
    obj_tpe_misha2.heads = 19
    obj_tpe_demo.heads = 12
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 98
        MAXSTR = 2
        STR[0] = "Oh hey!"
        STR[1] = "Are we#hating#on Eli?"
        STR[2] = "Cause I#got a#loooong#list!"
    }
}
if (progress == 2 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        heads = 4
    if (obj_speech_bubble_noevade.N == 2)
        heads = 6
}
if (progress == 2 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 3
    with (instance_create(20, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 4
        voiceon = 1
        textvoice = 99
        MAXSTR = 1
        STR[0] = "'old up!"
        STR[1] = "Didn't ye get#stuffed inside#a metal box?"
    }
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 4
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 98
        MAXSTR = 1
        STR[0] = "Yea! "
        STR[1] = "And it's#not even#No.1 on#my list!"
    }
}
if (progress == 4 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 11
    if (obj_speech_bubble_noevade.N == 1)
        heads = 1
}
if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 5
    instance_create(170, 300, obj_tpe_jane)
}

