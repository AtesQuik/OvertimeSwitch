if (progress == 0)
{
    obj_tpe_demo.heads = 11
    obj_tpe_scout1.heads = 0
    obj_tpe_eli1.heads = 8
    if (y > 75)
        y -= 5
    else
        progress = 1
    if (y < 280)
    {
        if (obj_tpe_scout1.x < 280)
            obj_tpe_scout1.x += 6
        if (obj_tpe_demo.x < 240)
            obj_tpe_demo.x += 5
        if (obj_tpe_eli1.x < 220)
            obj_tpe_eli1.x += 4
    }
}
if (progress == 1)
{
    progress = 3
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 1
        STR[0] = "DID SOMEONE#JUST SAY#NUMBER ONE?"
        STR[1] = "I HOPE#THEY WERE#TALKING#ABOUT ME!"
    }
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 4
    with (instance_create(obj_tpe_demo.x, y, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 99
        MAXSTR = 1
        STR[0] = "Aye,#Jane!"
        STR[1] = "What#are ye#doing#here?"
    }
}
if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 5
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 3
        STR[0] = "I WANT TO#STOP THIS#FIGHTING!"
        STR[1] = "IT IS#UNAMERICAN!"
        STR[2] = "ONLY I GET#TO FIGHT#AGAINST#THAT WOMAN!"
        STR[3] = "IF SHE#WANTS TO,#THAT IS."
    }
}
if (progress == 5 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 0
    if (obj_speech_bubble_noevade.N == 3)
        heads = 1
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_demo.heads = 5
    progress = 6
    with (instance_create(obj_tpe_demo.x, y, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 99
        MAXSTR = 0
        STR[0] = "Ach lad,#ye're#unbelie-#vable."
    }
}
if (progress == 6 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_demo.heads = 11
    progress = 7
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 1
        STR[0] = "THAT IS NOT#TRUE!"
        STR[1] = "I BELIEVE#IN MYSELF#VERY MUCH!"
    }
}
if (progress == 5 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 0
    if (obj_speech_bubble_noevade.N == 1)
        heads = 1
}
if (progress == 7 && (!instance_exists(obj_speech_bubble_noevade)))
{
    heads = 5
    progress = 8
    instance_create(120, -45, obj_tpe_dell)
}

