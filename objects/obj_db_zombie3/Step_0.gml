if (y <= 165)
{
    if (upordown == 0)
    {
        if (bob > -4)
            bob -= 0.5
        else
            upordown = 1
    }
    if (upordown == 1)
    {
        if (bob < 4)
            bob += 0.5
        else
            upordown = 0
    }
}

