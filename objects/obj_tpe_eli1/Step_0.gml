if (progress == 1)
{
    obj_tpe_demo.heads = 14
    progress = 2
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 1
        voiceon = 1
        textvoice = 104
        MAXSTR = 4
        STR[0] = "(Huff, Huff)"
        STR[1] = "HALT!"
        STR[2] = "Misha!#Don't!"
        STR[3] = "This girl is#alright!"
        STR[4] = "I, uh, need her!"
    }
}
if (progress == 2 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        heads = 6
    if (obj_speech_bubble_noevade.N == 3)
        heads = 5
    if (obj_speech_bubble_noevade.N == 4)
        heads = 3
}
if (progress == 2 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 3
    obj_tpe_sani1.heads = 20
    heads = 6
    with (instance_create(obj_tpe_sani1.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "Eli?"
    }
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 4
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 1
        voiceon = 1
        textvoice = 104
        MAXSTR = 5
        STR[0] = "Mein..."
        STR[1] = "GOTT!"
        STR[2] = "Sani!#It's been ages!"
        STR[3] = "Where have you#been?"
        STR[4] = "We've missed#you!"
        STR[5] = "And I managed to#finish our work!"
    }
}
if (progress == 4 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 13
    if (obj_speech_bubble_noevade.N == 2)
        heads = 14
    if (obj_speech_bubble_noevade.N == 3)
        heads = 13
    if (obj_speech_bubble_noevade.N == 4)
        obj_tpe_sani1.heads = 0
    if (obj_speech_bubble_noevade.N == 5)
        heads = 14
}
if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_misha2.heads = 15
    progress = 5
    with (instance_create(obj_tpe_sani1.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 82
        MAXSTR = 6
        STR[0] = "Don't#flatter#your-#self."
        STR[1] = "The#only#thing#you've"
        STR[2] = "missed#is my#sche-#matics."
        STR[3] = "You were#always#so good"
        STR[4] = "at#copying#me."
        STR[5] = "And got#upset#when#you"
        STR[6] = "couldn't#do it#any-#more."
    }
}
if (progress == 5 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 9
    if (obj_speech_bubble_noevade.N == 2)
        heads = 10
    if (obj_speech_bubble_noevade.N == 4)
        heads = 11
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    heads = 9
    progress = 6
    with (instance_create(x, y, obj_speech_bubble_noevade))
    {
        bubbleshape = 1
        voiceon = 1
        textvoice = 104
        MAXSTR = 0
        STR[0] = "Sani..."
    }
}
if (progress == 6 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 7
    heads = 11
    with (instance_create(obj_tpe_sani1.x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 82
        MAXSTR = 1
        STR[0] = "No, Eli."
        STR[1] = "We're#done."
    }
}
if (progress == 7 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        obj_tpe_sani1.heads = 1
    if (obj_speech_bubble_noevade.N == 2)
        obj_tpe_sani1.heads = 0
}
if (progress == 7 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 8
    instance_create(380, 70, obj_tpe_scout1)
}

