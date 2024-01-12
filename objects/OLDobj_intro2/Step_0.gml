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
    alarm[0] = 195
}
if (fadeoutprogress == 2)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 3
}
if (fadeoutprogress == 4)
{
    fadeoutprogress = 5
    alarm[0] = 195
}
if (fadeoutprogress == 5)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 6
}
if (fadeoutprogress == 7)
{
    fadeoutprogress = 8
    alarm[0] = 195
}
if (fadeoutprogress == 8)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 9
}
if (fadeoutprogress == 10)
{
    fadeoutprogress = 11
    alarm[0] = 235
}
if (fadeoutprogress == 11)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 12
}
if (fadeoutprogress == 13)
{
    fadeoutprogress = 14
    alarm[0] = 250
}
if (fadeoutprogress == 14)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 15
}
if (fadeoutprogress == 16)
{
    fadeoutprogress = 17
    alarm[0] = 200
}
if (fadeoutprogress == 17)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 18
}
if (fadeoutprogress == 19)
{
    fadeoutprogress = 20
    alarm[0] = 215
}
if (fadeoutprogress == 20)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 21
}
if (fadeoutprogress == 22)
{
    fadeoutprogress = 23
    alarm[0] = 215
}
if (fadeoutprogress == 23)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 24
}
if (fadeoutprogress == 25)
{
    fadeoutprogress = 26
    alarm[0] = 650
}
if (fadeoutprogress == 26)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 27
}
if (fadeoutprogress == 28)
{
    if (blackness < 1)
        blackness += 0.1
    else
        fadeoutprogress = 29
}
if (fadeinprogress == 1)
{
    fadeinprogress = 2
    alarm[1] = 21
    image_index = 1
}
if (fadeinprogress == 2)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 3
}
if (fadeinprogress == 4)
{
    fadeinprogress = 5
    alarm[1] = 195
    image_index = 2
}
if (fadeinprogress == 5)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 6
}
if (fadeinprogress == 7)
{
    fadeinprogress = 8
    alarm[1] = 215
    image_index = 3
}
if (fadeinprogress == 8)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 9
}
if (fadeinprogress == 10)
{
    fadeinprogress = 11
    alarm[1] = 360
    image_index = 4
}
if (fadeinprogress == 11)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 12
}
if (fadeinprogress == 13)
{
    fadeinprogress = 14
    alarm[1] = 195
    image_index = 5
}
if (fadeinprogress == 14)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 15
}
if (fadeinprogress == 16)
{
    fadeinprogress = 17
    alarm[1] = 245
    image_index = 6
}
if (fadeinprogress == 17)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 18
}
if (fadeinprogress == 19)
{
    fadeinprogress = 20
    alarm[1] = 190
    image_index = 7
}
if (fadeinprogress == 20)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 21
}
if (fadeinprogress == 22)
{
    fadeinprogress = 23
    alarm[1] = 220
    image_index = 8
}
if (fadeinprogress == 23)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 24
}
if (fadeinprogress == 25)
{
    fadeinprogress = 26
    alarm[1] = 215
    image_index = 9
}
if (fadeinprogress == 26)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 27
}
if (fadeinprogress == 28)
{
    if (blackness > 0)
        blackness -= 0.1
    else
        fadeinprogress = 29
}

