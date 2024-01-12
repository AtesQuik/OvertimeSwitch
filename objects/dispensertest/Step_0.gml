if (irandom(29) == 1)
    shaking = 5
if (upordown == 0)
{
    if (shaking >= 0 && shaking < 1)
        shaking += 0.5
    if (shaking >= 1 && shaking < 2)
        shaking += 0.5
    if (shaking >= 2 && shaking < 3)
        shaking += 0.5
    if (shaking >= 3 && shaking < 7)
        shaking += 1
    if (shaking >= 7 && shaking < 8)
        shaking += 0.5
    if (shaking >= 8 && shaking < 9)
        shaking += 0.5
    if (shaking >= 9 && shaking < 10)
        shaking += 0.5
    if (shaking >= 10)
        upordown = 1
}
if (upordown == 1)
{
    if (shaking <= 10 && shaking > 9)
        shaking -= 0.5
    if (shaking <= 9 && shaking > 8)
        shaking -= 0.5
    if (shaking <= 8 && shaking > 7)
        shaking -= 0.5
    if (shaking <= 7 && shaking > 3)
        shaking -= 1
    if (shaking <= 3 && shaking > 2)
        shaking -= 0.5
    if (shaking <= 2 && shaking > 1)
        shaking -= 0.5
    if (shaking <= 1 && shaking > 0)
        shaking -= 0.5
    if (shaking <= 0)
        upordown = 0
}

