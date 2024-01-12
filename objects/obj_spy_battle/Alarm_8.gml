with (instance_create((x + 8), 0, obj_speech_bubble))
{
    bubbleshape = 2
    voiceon = 1
    textvoice = 97
    MAXSTR = 0
    if (obj_spy_battle.jarated == 1)
        STR[0] = "I'd have NEVER#done the same thing#to you!#You freak!"
    else
        STR[0] = "Hm...fine shot.#Aim a little higher#next time, though.#It kills quicker."
}
isdying = 2

