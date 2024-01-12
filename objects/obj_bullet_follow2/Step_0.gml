if (moving == 1)
{
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
}
else
{
    if (progress == 1)
    {
        if (bulletx > 10)
            bulletx -= 0.5
        else
        {
            progress = 2
            alarm[3] = 30
        }
    }
    if (progress == 3)
    {
        if (bulletx < 20)
            bulletx += 0.5
        else
        {
            progress = 4
            alarm[2] = 30
        }
    }
}

