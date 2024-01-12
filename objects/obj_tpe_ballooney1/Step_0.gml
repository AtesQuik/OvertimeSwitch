if (progress == 1)
{
    if (image_alpha < 1)
        image_alpha += 0.01
    else
        progress = 2
}
if (progress == 2)
{
    progress = 3
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 5
        STR[0] = "Uh..."
        STR[1] = "What are ye#doing here?"
        STR[2] = "Didn't I tell ye#to get lost?"
        STR[3] = "..."
        STR[4] = "You don't look#so well..."
        STR[5] = "Like yer heart's#about to burst..."
    }
}
if (progress == 3 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        heads = 4
    if (obj_speech_bubble_noevade.N == 2)
        heads = 1
    if (obj_speech_bubble_noevade.N == 3)
        heads = 2
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 4
    with (obj_tpe_soul1)
        progress = 2
}
if (progress == 5)
{
    heads = 0
    progress = 6
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 2
        STR[0] = "Yeah, luv!"
        STR[1] = "You can do it!"
        STR[2] = "Snap outta it,#come back to life!"
    }
}
if (progress == 6 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 7
    alarm[1] = 30
}
if (progress == 8)
{
    heads = 2
    progress = 9
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 1
        STR[0] = "Or, uh..."
        STR[1] = "***** my *******,#what's 'appening now?"
    }
}
if (progress == 9 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 10
    alarm[2] = 30
}
if (progress == 11)
{
    progress = 12
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 6
        STR[0] = "Or, uh..."
        STR[1] = "***** my *******,#what's 'appening now?"
        STR[2] = "Oh no...#I know what this is!"
        STR[3] = "Yer bleedin' heart's#resettin' everything!"
        STR[4] = "It's going outside#of time and space!"
        STR[5] = "Buckle up, lass!"
        STR[6] = "We're now..."
    }
}
if (progress == 12 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 1)
        heads = 1
    if (obj_speech_bubble_noevade.N == 2)
        heads = 2
    if (obj_speech_bubble_noevade.N == 5)
        heads = 1
    if (obj_speech_bubble_noevade.N == 6)
        heads = 0
}
if (progress == 12 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 13
    with (obj_music_player)
        instance_destroy()
    audio_play_sound(snd_blink2, 1, false)
}
if (progress == 13)
{
    if (whitescreen < 1)
        whitescreen += 0.2
    else
    {
        progress = 15
        blackscreen = 1
    }
}
if (progress == 15)
{
    if (whitescreen > 0)
        whitescreen -= 0.2
    else
    {
        progress = 16
        instance_create(x, y, obj_tpe_letter)
    }
}

