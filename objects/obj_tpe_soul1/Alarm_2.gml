if (!instance_exists(obj_speech_bubble_noevade))
{
    with (obj_tpe_ballooney1)
        heads = 0
    progress = 5
    with (instance_create(0, 0, obj_music_player))
        musictrack = 194
    with (instance_create(-20, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 1
        STR[0] = "Don't be afraid."
        STR[1] = "It's going to be#fine."
    }
}

