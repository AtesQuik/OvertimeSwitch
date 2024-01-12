if (progress == 0)
{
    if (normalalpha > 0)
        normalalpha -= 0.02
    else
        progress = 1
}
if (progress == 1)
{
    if (normalalpha < 1)
        normalalpha += 0.02
    else
        progress = 2
}
if (progress == 2)
{
    if (brightalpha < 1)
        brightalpha += 0.02
    else
        progress = 3
}
if (progress == 3)
{
    if (brightalpha > 0)
        brightalpha -= 0.02
    else
        progress = 0
}

