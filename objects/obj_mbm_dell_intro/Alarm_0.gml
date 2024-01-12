if (global.delltimesdied == 0)
{
    progress = 1
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 85
        fontname = 10
        MAXSTR = 3
        STR[0] = "its a beauty of a#day outside."
        STR[1] = "the wind is howling."
        STR[2] = "the tumbleweed is#rolling."
        STR[3] = "and you,#my friend..."
    }
}
if (global.delltimesdied > 0)
{
    progress = 3
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 85
        fontname = 10
        MAXSTR = 3
        STR[0] = "its a beauty of a#day outside."
        STR[1] = "the wind is howling."
        STR[2] = "the tumbleweed is#rolling."
        STR[3] = "and you,#my friend..."
    }
}

