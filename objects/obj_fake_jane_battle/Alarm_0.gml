progress = 1
if (global.genocide == 0)
{
    with (instance_create((x + 16), 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 1
        STR[0] = "LET'S SEE#IF YOU CAN#HANDLE MY"
        STR[1] = "SPECIAL#ATTACK!"
    }
}
if (global.genocide == 1)
{
    with (instance_create((x + 16), 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 9
        STR[0] = "EXAMINING#YOUR AWFUL#DEEDS,#I HAVE"
        STR[1] = "MADE#THE#DECISION..."
        STR[2] = "...TO#SURRENDER."
        STR[3] = "NOT OUT OF#WEAKNESS#OR FEAR!"
        STR[4] = "BUT BECAUSE#YOUR#ACTIONS"
        STR[5] = "HAVE SHOWN#ME THAT#MAYBE#SOMETIMES"
        STR[6] = "KILLING IS#NOT THE#ANSWER!"
        STR[7] = "MAYBE MY#DECISION#CAN PREVENT#THE"
        STR[8] = "SUFFERING#OF MORE#PEOPLE!"
        STR[9] = "I WILL PUT#MY WEAPONS#DOWN, ARCH-#NEMESIS!"
    }
}

