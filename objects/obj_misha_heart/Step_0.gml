if (progress == 0)
{
    shakex = irandom_range(-1, 1)
    shakey = irandom_range(-1, 1)
}
if (progress == 1)
{
    shakex = 0
    shakey = 0
}
if (progress == 3)
{
    if (ballooneyextra > 0)
        ballooneyextra -= 3
    else
        progress = 4
}
if (progress == 4)
{
    progress = 5
    with (instance_create(160, 0, obj_speech_bubble_noevade))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 83
        MAXSTR = 4
        STR[0] = "Oi oi!"
        STR[1] = "Remember me?"
        STR[2] = "Well, not for long."
        STR[3] = "This is for the best."
        STR[4] = "Goodbye!"
    }
}
if (progress == 5 && instance_exists(obj_speech_bubble_noevade))
{
    if (obj_speech_bubble_noevade.N == 4)
        ballooneyfaces = 3
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 6
    audio_play_sound(snd_whitescreen, 1, false)
    global.pyroprogress = 1
}
if (progress == 6)
{
    if (whitescreen < 1)
        whitescreen += 0.005
    else
    {
        script_execute(scr_save_story)
        progress = 7
    }
}
if (progress == 7)
    ossafe_game_end()

