if (progress == 0)
{
    if (blackness > 0)
        blackness -= 0.01
    else
        progress = 1
}
if (progress == 1)
{
    if (lidlength > 0)
        lidlength -= 5
    else
    {
        progress = 2
        alarm[0] = 60
    }
}
if (progress == 4)
{
    if (eye1 < 59)
        eye1 += 1
    else
        eye1 = 0
    if (eye2 < 59)
        eye2 += 1
    else
        eye2 = 0
    if (headupdown == 0)
    {
        if (headbob < 12)
            headbob += 2
        else
            headupdown = 1
    }
    if (headupdown == 1)
    {
        if (headbob > 0)
            headbob -= 2
        else
            headupdown = 0
    }
}
if (progress >= 4)
{
    eye1xshake = irandom_range(-2, 2)
    eye1yshake = irandom_range(-2, 2)
    eye2xshake = irandom_range(-2, 2)
    eye2yshake = irandom_range(-2, 2)
}
if (progress > 4)
{
    if (eye1 > 0)
        eye1 -= 1
    if (eye2 > 0)
        eye2 -= 1
}
if (progress == 5)
{
    if (headbob > 0)
        headbob -= 0.125
    else
    {
        progress = 6
        alarm[2] = 60
    }
}

