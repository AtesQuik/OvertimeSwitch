progress = 4
with (obj_battle_spraycan)
    instance_destroy()
with (instance_create((x + 16), 0, obj_speech_bubble_noevade))
{
    bubbleshape = 2
    voiceon = 1
    textvoice = 86
    fontname = 9
    MAXSTR = 2
    STR[0] = "HAHA!#YOU'RE#ORANGE NOW!"
    STR[1] = "UH, MORE#ORANGE!"
    STR[2] = "HAVE FUN#TRYING TO#STOP#JUMPING!"
}

