if (goingdown == 0)
{
    if (waiting < 14)
        waiting += 0.25
    else
    {
        if (shaking < 2)
            shaking += 0.1
        if (shaking >= 2 && shaking < 6)
            shaking += 0.2
        if (shaking >= 6 && shaking < 12)
            shaking += 0.4
        if (shaking >= 12)
            goingdown = 1
    }
}
else if (waiting > -12)
    waiting -= 0.5
else
{
    if (shaking > 8 && shaking <= 12)
        shaking -= 1
    if (shaking > 0 && shaking <= 8)
        shaking -= 2
    if (shaking <= 0)
        goingdown = 0
}

