if (progress == 0)
{
    if (x > 200)
        x -= 5
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 99
        MAXSTR = 5
        STR[0] = "MISHA!"
        STR[1] = "LEAVE#THA'#LASS#ALONE!"
        STR[2] = "Or ye'll#have ta#get past#me!"
        STR[3] = "AND#YOU-"
        STR[4] = "'old#up."
        STR[5] = "I know#yer#face!"
    }
}
if (progress == 2 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 2)
        heads = 2
    if (obj_speech_bubble_noevade.N == 3)
        heads = 11
    if (obj_speech_bubble_noevade.N == 4)
        heads = 13
}
if (progress == 2 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 3
    obj_tpe_misha2.heads = 14
    obj_tpe_sani1.heads = 17
    heads = 11
    with (instance_create(obj_tpe_sani1.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 82
        MAXSTR = 2
        STR[0] = "Oh,#hallo."
        STR[1] = "I re-#member#you as#well."
        STR[2] = "You are#from#RED."
    }
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 4
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 99
        MAXSTR = 2
        STR[0] = "And ye#are tha'#BLU#doc!"
        STR[1] = "That put#everyone#back to-#gether"
        STR[2] = "after I#was done#with#them!"
    }
}
if (progress == 4 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        heads = 5
}
if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 5
    heads = 11
    with (instance_create(obj_tpe_sani1.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 82
        MAXSTR = 2
        STR[0] = "Well,#not#any-#more."
        STR[1] = "That's#behind#me."
        STR[2] = "There's#another#Medic#now."
    }
}
if (progress == 5 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        obj_tpe_sani1.heads = 15
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 6
    instance_create(260, 260, obj_tpe_eli1)
    obj_tpe_misha2.heads = 22
    obj_tpe_sani1.heads = 14
    heads = 13
}

