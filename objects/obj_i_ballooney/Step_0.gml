if (progress == 0)
{
    if (ballooneyextra > 0)
        ballooneyextra -= 3
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    with (instance_create(160, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 9
        STR[0] = "Oi oi!"
        STR[1] = "I forgot to mention#one more thi-"
        STR[2] = "Oh, what's wrong?"
        STR[3] = "Ah, I get it."
        STR[4] = "This wasn't the end#you anticipated,#was it?"
        STR[5] = "You wanted something#bigger, right?"
        STR[6] = "Well.#I think that crazy#doc..."
        STR[7] = "He's the key to#all of this."
        STR[8] = "Maybe you should pay#him a visit."
        STR[9] = "Well, cheerio!"
    }
}
if (progress == 2 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 2)
        ballooneyfaces = 2
    if (obj_speech_bubble_noevade.N == 3)
        ballooneyfaces = 0
    if (obj_speech_bubble_noevade.N == 4)
        ballooneyfaces = 3
    if (obj_speech_bubble_noevade.N == 6)
        ballooneyfaces = 0
    if (obj_speech_bubble_noevade.N == 9)
        ballooneyfaces = 3
}
if (progress == 2 && (!instance_exists(obj_speech_bubble_noevade)))
{
    if (ballooneyextra < 124)
        ballooneyextra += 3
    else
        progress = 3
}
if (progress == 3)
{
    global.pyroprogress = 0
    global.pacifistenabled = 1
    progress = 4
    alarm[0] = 15
}

