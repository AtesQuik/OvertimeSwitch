if (progress == 0)
{
    if (lidlength < 88)
        lidlength += 8
    else
    {
        progress = 1
        alarm[0] = 30
    }
}
if (progress == 2)
{
    if (lidlength > 0)
        lidlength -= 8
    else
        progress = 0
}

