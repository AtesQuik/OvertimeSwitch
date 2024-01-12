abouttocrash = 1
with (instance_create(x, 0, obj_speech_bubble_noevade))
{
    voiceon = 1
    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    bubbleshape = 2
    MAXSTR = 6
    STR[0] = "-ERROR-"
    STR[1] = "-HARDWARE#FAILURE#DETECTED-"
    STR[2] = "-SHORT CIRCUIT#IMMINENT-"
    STR[3] = "-LAUNCHING#REPAIR#PROGRAM-"
    STR[4] = "-ERROR-#-PROGRAM LAUNCH#FAILURE-"
    STR[5] = "-ERROR!-"
    STR[6] = "-ERROR! ERROR!#ERROR! ERROR!#ERROR! ERROR!-"
}
isdying = 2

