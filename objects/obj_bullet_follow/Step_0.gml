if (movedir == 0)
{
    if (x < 195)
        x += spd
    else
        movedir = 1
}
if (movedir == 1)
{
    if (x > 125)
        x -= spd
    else
        movedir = 0
}

