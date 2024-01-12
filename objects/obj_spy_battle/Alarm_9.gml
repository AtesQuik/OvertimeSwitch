with (instance_create((x + 8), 0, obj_speech_bubble))
{
    bubbleshape = 2
    voiceon = 1
    textvoice = 97
    MAXSTR = 0
    if (obj_spy_battle.jarated == 1)
        STR[0] = "I'd have NEVER#done the same#to you!#You freak!"
    else
        STR[0] = "I can't blame you.#I'd have done#the same.#Ahahaha~"
}
isdying = 2

