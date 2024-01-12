if (nomore == 0)
{
    CSTR = STR[N]
    POS += 0.4
    if (voicenow < 2)
        voicenow += 1
    else
        voicenow = 0
    if (POS < (string_length(CSTR) + 1))
    {
        if (voicenow == 0)
            audio_play_sound(textvoice, 1, false)
    }
}
if (fadeoutprogress == 1)
{
    fadeoutprogress = 2
    fadeout = 1
    alarm[0] = 195
}
if (fadeout == 1)
{
    if (blackness < 1)
        blackness += 0.05
    else
        fadeout = 0
}
if (fadeoutprogress == 3)
{
    fadeout = 1
    fadeoutprogress = 4
    alarm[0] = 195
}
if (fadeoutprogress == 5)
{
    fadeout = 1
    fadeoutprogress = 6
    alarm[0] = 195
}
if (fadeoutprogress == 7)
{
    fadeout = 1
    fadeoutprogress = 8
    alarm[0] = 235
}
if (fadeoutprogress == 9)
{
    fadeout = 1
    fadeoutprogress = 10
    alarm[0] = 250
}
if (fadeoutprogress == 11)
{
    fadeout = 1
    fadeoutprogress = 12
    alarm[0] = 200
}
if (fadeoutprogress == 13)
{
    fadeout = 1
    fadeoutprogress = 14
    alarm[0] = 215
}
if (fadeoutprogress == 15)
{
    fadeout = 1
    fadeoutprogress = 16
    alarm[0] = 215
}
if (fadeoutprogress == 17)
{
    fadeout = 1
    fadeoutprogress = 18
    alarm[0] = 650
}
if (fadeoutprogress == 19)
{
    fadeout = 1
    fadeoutprogress = 20
}
if (fadeinprogress == 1)
{
    fadein = 1
    fadeinprogress = 2
    alarm[1] = 205
    image_index = 1
}
if (fadein == 1 && fadeout == 0)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        fadein = 0
}
if (fadeinprogress == 3)
{
    fadein = 1
    fadeinprogress = 4
    alarm[1] = 195
    image_index = 2
}
if (fadeinprogress == 5)
{
    fadein = 1
    fadeinprogress = 6
    alarm[1] = 215
    image_index = 3
}
if (fadeinprogress == 7)
{
    fadein = 1
    fadeinprogress = 8
    alarm[1] = 360
    image_index = 4
}
if (fadeinprogress == 9)
{
    fadein = 1
    fadeinprogress = 10
    alarm[1] = 195
    image_index = 6
}
if (fadeinprogress == 11)
{
    fadein = 1
    fadeinprogress = 12
    alarm[1] = 245
    image_index = 7
}
if (fadeinprogress == 13)
{
    fadein = 1
    fadeinprogress = 14
    alarm[1] = 190
    image_index = 8
}
if (fadeinprogress == 15)
{
    fadein = 1
    fadeinprogress = 16
    alarm[1] = 220
    image_index = 9
}
if (fadeinprogress == 17)
{
    fadein = 1
    fadeinprogress = 18
    alarm[1] = 215
}
if (fadeinprogress == 19)
{
    fadein = 1
    fadeinprogress = 20
}
if (progress == 1)
{
    if (pany < 240)
        pany += 1
    else
        progress = 2
}
if (textprogress == 1)
{
    POS = 0
    N += 1
    textprogress = 2
    alarm[2] = 202
}
if (textprogress == 3)
{
    POS = 0
    N += 1
    textprogress = 4
    alarm[2] = 213
}
if (textprogress == 5)
{
    POS = 0
    N += 1
    textprogress = 6
    alarm[2] = 205
}
if (textprogress == 7)
{
    POS = 0
    N += 1
    textprogress = 8
    alarm[2] = 145
}
if (textprogress == 9)
{
    POS = 0
    N += 1
    textprogress = 10
    alarm[2] = 180
    image_index = 5
}
if (textprogress == 11)
{
    POS = 0
    N += 1
    textprogress = 12
    alarm[2] = 245
}
if (textprogress == 13)
    nomore = 1

