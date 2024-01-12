if (progress == 0)
{
    if (y < 90)
        y += 5
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    obj_tpe_scout1.heads = 4
    obj_tpe_demo.heads = 14
    obj_tpe_eli1.heads = 15
    obj_tpe_jane.heads = 0
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 85
        fontname = 10
        MAXSTR = 1
        STR[0] = "howdy, guys."
        STR[1] = "whats up?"
    }
}
if (progress == 2 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 1
    if (obj_speech_bubble_noevade.N == 1)
        heads = 5
}
if (progress == 2 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 3
    obj_tpe_jane.heads = 3
    with (instance_create(obj_tpe_jane.x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 1
        STR[0] = "DELL!#YOU LAZY#HIPPIE!"
        STR[1] = "WHERE HAVE#YOU BEEN?"
    }
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 4
    obj_tpe_jane.heads = 0
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 85
        fontname = 10
        MAXSTR = 3
        STR[0] = "i fell asleep in#front of our#house."
        STR[1] = "then i noticed#everyone was gone."
        STR[2] = "so i decided to#follow you guys."
        STR[3] = "sniper gave me#a lift."
    }
}
if (progress == 4 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 0
    if (obj_speech_bubble_noevade.N == 2)
        heads = 3
    if (obj_speech_bubble_noevade.N == 3)
        heads = 0
}
if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_eli1.heads = 16
    progress = 5
    instance_create(125, -55, obj_tpe_sniper)
}

