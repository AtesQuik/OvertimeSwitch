if (progress == 0)
{
    if (x > 160)
        x -= 4
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 17
        STR[0] = "Nein, nein.#That's not a#way to treat a#patient."
        STR[1] = "Hallo again.#It's me, SANI."
        STR[2] = "When you left,#I could not stop#feeling guilty."
        STR[3] = "Not only did I#try to imprison#you..."
        STR[4] = "...but I also#released you#into this#dangerous world."
        STR[5] = "I couldn't just let#you go all by#yourself.."
        STR[6] = "But when I left,#it was too late."
        STR[7] = "You were gone#already."
        STR[8] = "It took me ages#to find you here#in the Badlands."
        STR[9] = "I found out you#planned on#killing the#brothers Mann."
        STR[10] = "And that would#mean..."
        STR[11] = "...you'd have to#go up against#MISHA."
        STR[12] = "You wouldn't#survive that."
        STR[13] = "He is not kind to#people that try#to take his job#away from him."
        STR[14] = "So let us please#stop this#nonsense before#anyone gets hurt."
        STR[15] = "I couldn't bear#losing him,#either."
        STR[16] = "He was always a#very good friend#to me."
        STR[17] = "And I still do#care about him."
    }
}
if (progress == 2 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        heads = 13
    if (obj_speech_bubble_noevade.N == 2)
        heads = 15
    if (obj_speech_bubble_noevade.N == 3)
        heads = 2
    if (obj_speech_bubble_noevade.N == 4)
        heads = 3
    if (obj_speech_bubble_noevade.N == 5)
        heads = 4
    if (obj_speech_bubble_noevade.N == 6)
        heads = 6
    if (obj_speech_bubble_noevade.N == 8)
        heads = 15
    if (obj_speech_bubble_noevade.N == 11)
        heads = 3
    if (obj_speech_bubble_noevade.N == 12)
        heads = 6
    if (obj_speech_bubble_noevade.N == 13)
        heads = 2
    if (obj_speech_bubble_noevade.N == 14)
        heads = 15
}
if (progress == 2 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 3
    instance_create(-45, 75, obj_tpe_misha2)
}
if (progress == 3)
{
    if (obj_tpe_misha2.x < 50)
        obj_tpe_misha2.x += 3
    else
        progress = 4
}
if (progress == 4)
{
    progress = 5
    with (instance_create((obj_tpe_misha2.x + 16), 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 81
        MAXSTR = 1
        STR[0] = "Sani..."
        STR[1] = "Is that#true?"
    }
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_misha2.heads = 15
    progress = 6
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 4
        STR[0] = "It is..."
        STR[1] = "I've missed you#greatly."
        STR[2] = "I should have#never left you."
        STR[3] = "I've realized#how much this#job meant to you."
        STR[4] = "How much you#needed it."
    }
}
if (progress == 6 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 3
    if (obj_speech_bubble_noevade.N == 1)
        heads = 15
    if (obj_speech_bubble_noevade.N == 2)
        heads = 6
    if (obj_speech_bubble_noevade.N == 3)
        heads = 15
}
if (progress == 6 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 7
    with (instance_create((obj_tpe_misha2.x + 16), 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 81
        MAXSTR = 4
        STR[0] = "It was#my#fault,#Doctor."
        STR[1] = "I only#wanted#to help#family."
        STR[2] = "Never#meant#to hurt#you."
        STR[3] = "Can we#please#be..."
        STR[4] = "friends#again?"
    }
}
if (progress == 7 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        obj_tpe_misha2.heads = 17
    if (obj_speech_bubble_noevade.N == 1)
        heads = 1
    if (obj_speech_bubble_noevade.N == 2)
        obj_tpe_misha2.heads = 18
    if (obj_speech_bubble_noevade.N == 3)
        obj_tpe_misha2.heads = 17
    if (obj_speech_bubble_noevade.N == 4)
    {
        obj_tpe_misha2.heads = 19
        heads = 5
    }
}
if (progress == 7 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 8
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 1
        STR[0] = "Of course,#mein Freund!"
        STR[1] = "I am so sorry."
    }
}
if (progress == 8 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 0)
        heads = 7
    if (obj_speech_bubble_noevade.N == 1)
        heads = 16
}
if (progress == 8 && (!instance_exists(obj_speech_bubble_noevade)))
{
    obj_tpe_misha2.heads = 22
    heads = 14
    progress = 9
    with (instance_create(160, 150, obj_speech_bubble_noevade))
    {
        bubbleshape = 4
        voiceon = 1
        textvoice = 99
        MAXSTR = 1
        STR[0] = "ACH!"
        STR[1] = "STOP IT!"
    }
}
if (progress == 9 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 10
    instance_create(350, 75, obj_tpe_demo)
}
if (progress == 10)
{
    if (obj_tpe_misha2.x > 15)
        obj_tpe_misha2.x -= 2
    if (x > 70)
        x -= 3
    else
        progress = 11
}

