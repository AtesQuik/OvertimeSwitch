if (progress == 0)
{
    if (y < 75)
        y += 5
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 97
        MAXSTR = 2
        STR[0] = "Bonjour,#ma#chere..."
        STR[1] = "I didn't#forget#about#you..."
        STR[2] = "Ahahaha~"
    }
}
if (progress == 2 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 3
    path_start(path_tpe_spy, 8, path_action_stop, 0)
}
if (progress == 3)
{
    if (obj_tpe_jane.x > 175)
        obj_tpe_jane.x -= 2
    if (obj_tpe_dell.x < 120)
        obj_tpe_dell.x += 2
}
if (progress == 4)
{
    progress = 5
    obj_tpe_misha2.heads = 13
    obj_tpe_sani1.heads = 21
    obj_tpe_demo.heads = 0
    obj_tpe_jane.heads = 1
    obj_tpe_eli1.heads = 0
    obj_tpe_scout1.heads = 0
    with (instance_create(obj_tpe_sani1.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 82
        MAXSTR = 6
        STR[0] = "Well..."
        STR[1] = "Look at#you."
        STR[2] = "You#united#so many#people."
        STR[3] = "People#from two#opposing#forces."
        STR[4] = "Against#all#odds."
        STR[5] = "I knew#you had#some-#thing"
        STR[6] = "special#in you."
    }
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_misha2.heads = 14
    obj_tpe_sani1.heads = 17
    obj_tpe_demo.heads = 11
    obj_tpe_dell.heads = 5
    obj_tpe_eli1.heads = 2
    obj_tpe_scout1.heads = 0
    progress = 6
    with (instance_create(obj_tpe_jane.x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 9
        STR[0] = "OH, I#ALMOST#FORGOT THE#GOOD NEWS!"
        STR[1] = "THE MANN#BROTHERS#ARE GONE!"
        STR[2] = "THEY LEFT#BEFORE#YOU WERE#ABLE TO"
        STR[3] = "REACH THEM#IN TIME!"
        STR[4] = "NOW YOU#WON'T HAVE#TO WORRY#ABOUT"
        STR[5] = "KILLING#THEM#ANYMORE!"
        STR[6] = "AWWW, LOOK#AT HOW#HAPPY THAT#MAKES YOU!"
        STR[7] = "WITH YOUR#PALE FACE#AND YOUR"
        STR[8] = "TREMBLING#LEGS, AND#YOUR COLD#SWEAT..."
        STR[9] = "UH...#IS THAT#NORMAL?"
    }
}
if (progress == 6 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 6)
        obj_tpe_jane.heads = 2
}
if (progress == 6 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_misha2.heads = 12
    obj_tpe_sani1.heads = 14
    obj_tpe_demo.heads = 0
    obj_tpe_dell.heads = 0
    obj_tpe_eli1.heads = 5
    obj_tpe_scout1.heads = 11
    progress = 7
    with (obj_music_player)
        instance_destroy()
    with (instance_create(obj_tpe_eli1.x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 1
        voiceon = 1
        textvoice = 104
        MAXSTR = 0
        STR[0] = "That usually#only happens to#my patients..."
    }
}
if (progress == 7 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_demo.heads = 13
    progress = 8
    with (instance_create(obj_tpe_sani1.x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 3
        STR[0] = "Oh nein, I know#what this is!"
        STR[1] = "She's going into#cardiac arrest!"
        STR[2] = "Her heart is failing!"
        STR[3] = "Stand back!"
    }
}
if (progress == 8 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        blackness = 0.25
    if (obj_speech_bubble_noevade.N == 2)
        blackness = 0.5
    if (obj_speech_bubble_noevade.N == 3)
        blackness = 0.75
}
if (progress == 8 && (!instance_exists(obj_speech_bubble_noevade)))
{
    if (blackness < 1)
        blackness += 0.25
    else
        progress = 9
}
if (progress == 9)
{
    progress = 10
    room_goto(rm_tpe_ballooney)
}

