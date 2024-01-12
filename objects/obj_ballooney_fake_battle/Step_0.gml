if (progress == 1 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 2
    instance_create(x, y, obj_h_beer_bottle)
}
if (progress == 3)
{
    progress = 4
    with (obj_music_player)
        instance_destroy()
    image_index = 1
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 84
        MAXSTR = 4
        STR[0] = "YE BLEEDIN'#MORON!"
        STR[1] = "You come to MY land,#and then you think#you can just prance"
        STR[2] = "around here and drink#MY booze?"
        STR[3] = "What kind of#****** *******#are you?"
        STR[4] = "It's always#the same with you#******* lasses!"
    }
}
if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 5
    alarm[1] = 1
}
if (progress == 5 && global.playerhealth == 1)
{
    progress = 6
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 84
        MAXSTR = 0
        STR[0] = "I'm gonna wipe the#****** floor with#your blood!"
    }
}
if (progress == 6 && waiting == 0 && (!instance_exists(obj_speech_bubble_noevade)))
{
    alarm[2] = 30
    waiting = 1
}
if (progress == 7 && (!instance_exists(obj_speech_bubble_noevade)))
{
    image_index = 1
    alarm[4] = 1
    alarm[5] = 60
    progress = 8
}
if (progress == 10 && (!instance_exists(obj_speech_bubble_noevade)))
{
    image_index = 1
    progress = 11
    instance_create(0, 0, obj_h_whitescreen)
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 84
        MAXSTR = 4
        STR[0] = "Oi!"
        STR[1] = "Where are you going?"
        STR[2] = "This isn't over yet!"
        STR[3] = "You ***** *****!"
        STR[4] = "Get ****** back here!"
    }
}
if (progress == 1 && arrowscreated == 0 && obj_speech_bubble_noevade.N == 2)
{
    arrowscreated = 1
    if (!instance_exists(obj_h_soul_arrows))
        instance_create(0, 0, obj_h_soul_arrows)
}

