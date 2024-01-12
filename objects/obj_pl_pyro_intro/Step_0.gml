if (progress < 4)
{
    if (blackdownup == 0)
    {
        if (bgblackness > 0)
            bgblackness -= 0.05
        else
            blackdownup = 1
    }
    if (blackdownup == 1)
    {
        if (bgblackness < 1)
            bgblackness += 0.05
        else
            blackdownup = 0
    }
}
if (progress == 0)
{
    if (pyroy > 0)
        pyroy -= 1
    if (headupdown == 0)
    {
        if (headbob < 12)
            headbob += 0.25
        else
            headupdown = 1
    }
    if (headupdown == 1)
    {
        if (headbob > 0)
            headbob -= 0.25
        else
            headupdown = 0
    }
}
if (progress == 1)
{
    if (headbob > 0)
        headbob -= 0.5
}
if (progress == 2)
{
    if (lidlength > 0)
        lidlength -= 4
    else
    {
        progress = 3
        alarm[2] = 60
    }
}
if (progress == 4)
{
    if (bgblackness < 1)
        bgblackness += 0.01
    if (bgblackness > 0)
        bgblackness -= 0.05
    if (lidlength < 88)
        lidlength += 4
    else
    {
        progress = 5
        alarm[3] = 30
    }
}
if (progress == 6)
{
    if (lidlength > 0)
        lidlength -= 2
    else
    {
        progress = 7
        alarm[4] = 60
    }
}
if (progress == 8)
{
    if (lidlength < 90)
        lidlength += 9
    else
    {
        progress = 9
        alarm[5] = 30
        global.pyroprogress = 3
    }
}

