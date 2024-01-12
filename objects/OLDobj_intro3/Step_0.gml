if (progress == 1)
{
    if (blackness < 1)
        blackness += 0.05
    else
    {
        progress = 2
        image_index = 1
        alarm[0] = 180
    }
}
if (progress == 3)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        progress = 4
}
if (progress == 5)
{
    if (blackness < 1)
        blackness += 0.05
    else
    {
        progress = 6
        image_index = 2
        alarm[0] = 180
    }
}
if (progress == 7)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        progress = 8
}
if (progress == 9)
{
    if (blackness < 1)
        blackness += 0.05
    else
    {
        progress = 10
        image_index = 3
        alarm[0] = 180
    }
}
if (progress == 11)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        progress = 12
}
if (progress == 13)
{
    if (blackness < 1)
        blackness += 0.05
    else
    {
        progress = 14
        image_index = 4
        alarm[0] = 135
    }
}
if (progress == 15)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        progress = 16
}
if (progress == 17)
{
    if (blackness < 1)
        blackness += 0.05
    else
    {
        progress = 18
        image_index = 5
        alarm[0] = 210
    }
}
if (progress == 19)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        progress = 20
}
if (progress == 21)
{
    if (blackness < 1)
        blackness += 0.05
    else
    {
        progress = 22
        image_index = 6
        alarm[0] = 210
    }
}
if (progress == 23)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        progress = 24
}
if (progress == 25)
{
    if (blackness < 1)
        blackness += 0.05
    else
    {
        progress = 26
        image_index = 7
        alarm[0] = 210
    }
}
if (progress == 27)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        progress = 28
}
if (progress == 29)
{
    if (blackness < 1)
        blackness += 0.05
    else
    {
        progress = 30
        image_index = 8
        alarm[0] = 210
    }
}
if (progress == 31)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        progress = 32
}
if (progress == 33)
{
    if (blackness < 1)
        blackness += 0.05
    else
    {
        progress = 34
        alarm[3] = 180
    }
}
if (progress == 35)
{
    if (blackness > 0)
        blackness -= 0.05
    else
        progress = 36
}
if (progress == 37)
{
    if (pany < 240)
        pany += 1
    else
        progress = 38
}
if (nomore == 0)
{
    CSTR = STR[N]
    POS += 0.25
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

