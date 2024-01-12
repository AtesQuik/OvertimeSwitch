if (progress == 1 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 2
    instance_create(416, 160, obj_tm_battle_bullet)
}
if (progress == 3 && (!instance_exists(obj_tm_battle_bullet)))
{
    progress = 4
    with (instance_create(x, 0, obj_speech_bubble_noevade))
    {
        voiceon = 1
        textvoice = 96
        bubbleshape = 1
        MAXSTR = 1
        STR[0] = "That was your#only warning."
        STR[1] = "Step forward and#it'll be the last#thing you'll do!"
    }
}
if (progress == 4 && (!instance_exists(obj_speech_bubble_noevade)))
{
    global.playerxpos = 170
    global.playerypos = 680
    global.playerdirection = 2
    progress = 5
    instance_create(0, 0, obj_fake_battle_fade_out)
}

