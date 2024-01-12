if (!instance_exists(obj_speech_bubble_noevade))
{
    with (obj_tpe_ballooney1)
        image_xscale = -1
    progress = 9
    with (instance_create(160, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 4
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 2
        STR[0] = "YES, ARCH-#I MEAN MA'AM!"
        STR[1] = "IF YOU CAN#GET PAST#ME..."
        STR[2] = "YOU CAN#DO THIS#TOO!"
    }
}

